# Random Dopamine Game

Flutter mobile game — competitive stickman race for tablets (offline multiplayer).
See `.claude/project-intro.md` for full game design spec.

## Tech Stack

- **Framework:** Flutter (Dart)
- **Platform:** Mobile only (Android & iOS), tablet landscape optimized
- **State:** ChangeNotifier + Timer.periodic game loop
- **Git Hooks:** lefthook (pre-commit: format, lint, analyze)
- **Widget Catalog:** Widgetbook

## Common Commands

```bash
# Run
flutter run                          # Run on connected device
flutter run --device-id <id>         # Run on specific device

# Build
flutter build apk                   # Android APK
flutter build ios                   # iOS build

# Test
flutter test                        # Run all tests
flutter test --coverage             # With coverage

# Code Quality
dart format .                       # Format all Dart files
dart analyze                        # Static analysis
flutter pub get                     # Install dependencies

# Widgetbook
flutter run -t lib/widgetbook.dart  # Launch widget catalog

# Lefthook
lefthook run pre-commit             # Run hooks manually
```

## Code Style

- Follow official Dart style guide and `flutter_lints`
- Use `const` constructors wherever possible
- Prefer composition over inheritance for widgets
- Keep widgets small — extract when a build method exceeds ~50 lines
- Name files in `snake_case.dart`, classes in `PascalCase`
- Group imports: dart → package → relative

## Project Structure

```
lib/
  main.dart              # App entry point
  game/                  # Game logic (loop, state, models)
  widgets/               # Reusable UI components
  screens/               # Full screen pages
  utils/                 # Helpers, constants
test/                    # Unit and widget tests
```

## Rules

- Target tablet landscape mode — always test with tablet emulator
- Multi-touch must work: each lane handles taps independently
- Game loop runs at 50ms intervals via Timer.periodic
- Keep game state separate from UI (ChangeNotifier pattern)
- Use `HapticFeedback.lightImpact()` for tap feedback
- No network calls — this is a fully offline game
