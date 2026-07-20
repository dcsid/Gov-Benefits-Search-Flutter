# Benefits Digger — Flutter Web

Flutter Web rewrite of the Benefits Digger frontend. Talks to the existing FastAPI backend in the sibling [Gov-Benefits-Search](https://github.com/dcsid/Gov-Benefits-Search) repo.

## Prerequisites

- Flutter (stable channel)
- Dart 3.5+

## Setup

```bash
git clone https://github.com/dcsid/Gov-Benefits-Search-Flutter.git
cd Gov-Benefits-Search-Flutter
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

## Run modes

Pick the mode that matches what you're doing. Debug is **30-50× slower** than release; most "the app feels laggy" reports trace back to running in debug. **Don't evaluate smoothness in debug mode.**

| Mode      | Command                                                | When to use                                                                 |
| --------- | ------------------------------------------------------ | --------------------------------------------------------------------------- |
| Release   | `flutter run -d chrome --release --web-port=3000`      | Smoothest interactive build — what users actually see in the production deploy. |
| Profile   | `flutter run -d chrome --profile --web-port=3000`      | Profile build with the DevTools hook — required for the Performance tab and CPU/memory recording. |
| Debug     | `flutter run -d chrome --web-port=3000`                | Hot reload + asserts. Useful for development. **Slow.** Don't use for perf evaluation. |

All three accept the same `--dart-define`s — minimal example:

```bash
flutter run -d chrome --release --web-port=3000 \
  --dart-define=API_BASE=http://localhost:8000/api/v1
```

Port `3000` matches the backend's CORS allowlist (`CORS_ALLOW_ORIGINS=http://localhost:3000`).

Other dart-defines:

| Key               | Default                              |
| ----------------- | ------------------------------------ |
| `API_BASE`        | `http://localhost:8000/api/v1`       |
| `APP_NAME`        | `Benefits Digger`                    |
| `ENABLE_DEVTOOLS` | `false`                              |
| `USE_MOCKS`       | `false`                              |

## Build (release)

```bash
flutter build web --release
```

This is the documented default. Last measurement (2026-05-10):

| Artifact            | Raw      | Gzipped  |
| ------------------- | -------- | -------- |
| `main.dart.js`      | 3730 KB  | 1070 KB  |
| `canvaskit.wasm`    | 6988 KB  | 2802 KB  |
| Total `build/web/`  | -        | 38 MB    |

Plus 4 deferred-route chunks (`main.dart.js_*.part.js`, ~43 KB gzipped combined) that are fetched on first navigation to `/results`, `/dashboard`, `/chat`, or `/_kitchen_sink`. See [Code-splitting](#code-splitting) below.

### Renderer choice: JS vs WebAssembly

The default `flutter build web --release` ships dart2js + the canvaskit (or skwasm) WASM rendering engine. Flutter also has a `--wasm` mode that compiles Dart itself to WebAssembly:

```bash
flutter build web --release --wasm
```

Comparison on this app (2026-05-10):

| Mode               | Critical bytes (gz) | Total `build/web/` | Notes |
| ------------------ | ------------------- | ------------------ | ----- |
| Default (dart2js)  | ~1070 KB main + canvaskit | **38 MB** | Universal browser support; `deferred` imports DO split chunks. |
| `--wasm`           | ~1217 KB main.dart.wasm + wimp.wasm | 42 MB | Requires browser WASM-GC support; ships JS fallback alongside. `deferred` imports do NOT split. |

The default JS build is the smaller deploy and the documented default. `--wasm` is opt-in; revisit when WASM-GC is universal in evergreen browsers.

### Code-splitting

`lib/app/router.dart` declares `deferred as` imports for the four heaviest routes (`/results`, `/dashboard`, `/chat`, `/_kitchen_sink`). Each lives in its own `main.dart.js_*.part.js` chunk and is fetched on first navigation; a centered spinner renders during the load. Eager-imported routes (landing, explorer, screening, info pages) ship in the initial bundle.

## Performance notes

- **Inter font is bundled locally** (`assets/fonts/Inter/`, declared under `flutter.fonts:` in `pubspec.yaml`); first paint no longer waits on a Google Fonts network round-trip, and there's no FOIT.
- `web/index.html` preloads `flutter_bootstrap.js`, `main.dart.js`, the canvaskit chunks, AND the two Inter weights (Regular + Bold) used on first paint, so the browser fetches them in parallel with HTML parsing.
- `web/index.html` also `dns-prefetch`es and `preconnect`s to the local backend at `127.0.0.1:8000` so the first `/api/v1` fetch from app bootstrap doesn't pay the DNS + TLS round-trip serially.
- Long lists (chat messages, search results, comparison rows) use `ListView.builder` / `GridView.builder` so off-screen items aren't materialized.
- Rebuild scope is narrow: page-level consumers `.select()` only the slices they display, and `BdHeader` / `BdFooter` sit inside `RepaintBoundary`s so unrelated state changes don't repaint chrome.
- `What-If` scenario inputs own their `TextEditingController`s in stateful widgets — typing no longer recreates controllers (which previously dropped cursor position on every keystroke).

## Backend

The FastAPI backend that this app talks to lives in the [Gov-Benefits-Search](https://github.com/dcsid/Gov-Benefits-Search) repo — see its README for setup. By default this app expects it at `http://localhost:8000`.

> **Note:** the backend repo is currently private, so external users can't run the backend yet. There is no working backend-free demo mode at the moment either — the `USE_MOCKS` dart-define (`lib/core/env.dart`) is declared but not yet wired to anything, and only the help bot has a mock (`MockHelpService`, applied via a `ProviderScope` override in tests).

## Project layout

- `lib/app/` — root widget, routing, theme
- `lib/core/` — env, API client, shared infrastructure
- `lib/features/` — feature modules (added by follow-up work)
- `lib/widgets/` — shared widgets
- `lib/l10n/` — localization (ar, en, es, ko, ru, vi, zh)
