# Project: Random Dopamine Game (Flutter)

**Core Concept:** A competitive "Stickman Race" mini-game for tablets where multiple users can play offline. The goal is to reach the finish line first by "cheering" (tapping) your lane.

## 1. Game Mechanics (The "Dopamine" Logic)

- **Randomness:** Each stickman has a base speed that fluctuates randomly every 50ms (0.5 to 1.5 multiplier).
- **Interactive Boost:** Each tap on a specific lane increases that stickman's `touchCount`, which directly adds a temporary speed boost.
- **Rubber-banding:** To keep the race exciting, implement a "Catch-up" logic where the last-place player gets a 5% speed buff.
- **End Game:** Stop the loop as soon as any `position` reaches 100%.

## 2. Technical Specs

- **Platform:** Mobile only (Android & iOS), optimized for tablet in landscape mode.
- **State Management:** Use a simple `ChangeNotifier` or `StatefulWidget` with a `Timer.periodic` loop.
- **Responsive UI:** Ensure the race track fits the full width of a tablet in landscape mode. Use `LayoutBuilder` for dynamic sizing.
- **Multi-touch:** Each lane must independently detect taps simultaneously without blocking others.
- **Git Hooks:** Use `lefthook` for pre-commit linting, formatting, and analysis.
- **Widget Catalog:** Use `Widgetbook` for browsing and testing widgets in isolation.

## 3. Visual & Interaction Requirements

- **Animation:** Use `AnimatedAlign` or `AnimatedPositioned` for smooth movement of the characters.
- **Feedback:** - Trigger `HapticFeedback.lightImpact()` on every tap.
  - Show a small floating text (e.g., "+1") at the tap location using a simple overlay or stack.
- **Winning Moment:** Use the `confetti` package to celebrate the winner.

## 4. Initial Task

- Create a basic prototype with 4 horizontal lanes.
- Use simple Icons (`Icons.directions_run`) for characters first.
- Implement the "Tap to Speed Up" and "Random Movement" loop.
