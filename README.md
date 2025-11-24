# Auth App

Simple Flutter authentication playground showcasing a clean architecture-ish set up with MobX state
management and Hive-powered local storage.

## Highlights

- **MobX + GetIt**: `AuthController` holds all business logic and is injected through the service
  locator so widgets stay focused purely on rendering.
- **Hive persistence**: user credentials are stored in a local box and the last successful login is
  restored automatically, so closing the app keeps you signed in until you hit logout.
- **Modular theming**: custom color/text/spacing extensions keep the UI consistent and easy to tweak.

## Project structure

```
lib/
 ├─ core/di/…            // Service locator + app bootstrap
 ├─ data/auth/…          // DTOs, repositories, Hive storage and failures
 ├─ presentation/auth/…  // Screens, MobX controller, widgets
 └─ presentation/theme/… // Theme extensions, sizes, shared widgets
```

## Getting started

1. Install Flutter newest version.
2. Fetch packages: `flutter pub get`.
3. Generate code (MobX + Hive adapters): `flutter pub run build_runner build`.
4. Run the app: `flutter run`.

> Tip: every time you change MobX stores or Hive DTOs, rerun the build runner command above.

## Useful scripts

- `flutter pub run build_runner build --delete-conflicting-outputs`
