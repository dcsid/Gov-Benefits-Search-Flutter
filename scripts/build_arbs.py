"""Merge per-language translation dicts (scripts/_translations_*.py) with the
canonical English ARB and write app_<lang>.arb files.

Usage:  python3 scripts/build_arbs.py

Reads:
  lib/l10n/app_en.arb
  scripts/_translations_zh.py, _translations_vi.py, _translations_ko.py,
  _translations_ru.py, _translations_ar.py

Writes:
  lib/l10n/app_zh.arb, app_vi.arb, app_ko.arb, app_ru.arb, app_ar.arb

@<key> metadata blocks from app_en.arb are intentionally NOT copied: per the
Flutter gen-l10n convention only the template ARB carries them. Translation
ARBs hold {key: value} pairs plus @@locale.
"""
from __future__ import annotations

import importlib.util
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
EN_PATH = ROOT / "lib" / "l10n" / "app_en.arb"

LANGS = ("zh", "vi", "ko", "ru", "ar")


def load_translations(lang: str) -> dict[str, str]:
    spec = importlib.util.spec_from_file_location(
        f"_translations_{lang}",
        ROOT / "scripts" / f"_translations_{lang}.py",
    )
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Cannot load _translations_{lang}.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module.T


def main() -> int:
    en = json.loads(EN_PATH.read_text(encoding="utf-8"))
    en_keys = [k for k in en if not k.startswith("@")]

    failures = 0
    for lang in LANGS:
        t = load_translations(lang)
        missing = [k for k in en_keys if k not in t]
        extra = [k for k in t if k not in en_keys]
        if missing:
            print(f"[{lang}] MISSING {len(missing)} key(s): {missing[:5]}")
            failures += 1
        if extra:
            print(f"[{lang}] EXTRA {len(extra)} key(s) (ignored): {extra[:5]}")

        out: dict[str, object] = {"@@locale": lang}
        for k in en_keys:
            v = t.get(k, en[k])
            out[k] = v

        path = ROOT / "lib" / "l10n" / f"app_{lang}.arb"
        path.write_text(
            json.dumps(out, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
        print(f"[{lang}] wrote {path.name} with {len(en_keys)} keys")

    return 0 if failures == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
