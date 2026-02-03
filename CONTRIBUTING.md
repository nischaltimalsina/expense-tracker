# Contributing to Expense Tracker

Thank you for your interest in contributing to the Expense Tracker app!

## Development Setup

### Prerequisites

Before you begin, ensure you have the following installed:

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Git
- An IDE (Android Studio, VS Code, or IntelliJ IDEA)
- For Android development: Android Studio and Android SDK
- For iOS development: Xcode (macOS only)

### Setting Up Flutter

1. **Install Flutter**:
   - Download Flutter from [flutter.dev](https://flutter.dev/docs/get-started/install)
   - Add Flutter to your PATH
   - Run `flutter doctor` to verify installation

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/nischaltimalsina/expense-tracker.git
   cd expense-tracker
   ```

3. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

4. **Verify Setup**:
   ```bash
   flutter doctor -v
   ```

## Project Architecture

This project follows a clean architecture approach with the following structure:

- **models/**: Data models and entities
- **screens/**: UI screens and pages
- **widgets/**: Reusable UI components
- **providers/**: State management using Provider pattern
- **utils/**: Utility functions and helpers

## Development Workflow

### Running the App

1. **Start an emulator or connect a device**

2. **Run the app**:
   ```bash
   flutter run
   ```

3. **For hot reload**: Press `r` in the terminal
4. **For hot restart**: Press `R` in the terminal
5. **To quit**: Press `q` in the terminal

### Running Tests

Run all tests:
```bash
flutter test
```

Run specific test file:
```bash
flutter test test/transaction_test.dart
```

Run tests with coverage:
```bash
flutter test --coverage
```

### Code Quality

1. **Analyze code**:
   ```bash
   flutter analyze
   ```

2. **Format code**:
   ```bash
   flutter format .
   ```

3. **Run linter**:
   ```bash
   dart analyze
   ```

## Coding Guidelines

1. **Naming Conventions**:
   - Use `camelCase` for variables and functions
   - Use `PascalCase` for classes and widgets
   - Prefix private members with `_`

2. **Code Style**:
   - Follow the official [Dart style guide](https://dart.dev/guides/language/effective-dart/style)
   - Use const constructors where possible
   - Prefer single quotes for strings
   - Always declare return types

3. **Comments**:
   - Add comments for complex logic
   - Use `///` for documentation comments
   - Keep comments concise and meaningful

4. **State Management**:
   - Use Provider for state management
   - Keep business logic in providers
   - Keep widgets pure and stateless when possible

## Making Changes

1. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. Make your changes following the coding guidelines

3. Test your changes thoroughly

4. Commit your changes:
   ```bash
   git add .
   git commit -m "Brief description of changes"
   ```

5. Push to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```

6. Create a Pull Request

## Pull Request Guidelines

- Provide a clear description of the changes
- Reference any related issues
- Ensure all tests pass
- Update documentation if needed
- Keep PRs focused on a single feature or fix

## Need Help?

If you have questions or need help, please:
- Check existing issues and discussions
- Create a new issue with details
- Tag maintainers if needed

Thank you for contributing!
