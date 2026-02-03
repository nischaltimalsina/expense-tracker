# Quick Start Guide

This guide will help you get the Expense Tracker app up and running quickly.

## Prerequisites

Before you start, make sure you have Flutter installed. If not, follow these steps:

### Install Flutter

1. **Download Flutter SDK**:
   - Visit [flutter.dev](https://docs.flutter.dev/get-started/install)
   - Choose your operating system
   - Download the latest stable release

2. **Extract and add to PATH**:
   ```bash
   # Example for Linux/macOS
   export PATH="$PATH:`pwd`/flutter/bin"
   ```

3. **Verify installation**:
   ```bash
   flutter doctor
   ```

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/nischaltimalsina/expense-tracker.git
cd expense-tracker
```

### 2. Install Dependencies

```bash
flutter pub get
```

This command downloads all the packages specified in `pubspec.yaml`.

### 3. Run the App

#### Option A: Using an Emulator

1. Start an Android emulator or iOS simulator:
   ```bash
   # For Android
   flutter emulators
   flutter emulators --launch <emulator_id>
   
   # For iOS (macOS only)
   open -a Simulator
   ```

2. Run the app:
   ```bash
   flutter run
   ```

#### Option B: Using a Physical Device

1. Enable USB debugging on your Android device or trust your computer on iOS

2. Connect your device via USB

3. Verify the device is detected:
   ```bash
   flutter devices
   ```

4. Run the app:
   ```bash
   flutter run
   ```

### 4. Development Mode

While the app is running, you can:
- Press `r` for hot reload (refresh changes instantly)
- Press `R` for hot restart (restart the app)
- Press `q` to quit

## Project Overview

### Key Features
- ✅ **Navigation**: Tab-based navigation with Home, Reports, and Settings
- ✅ **Add Transactions**: Form to add income and expenses
- ✅ **Reports**: View financial summaries and category breakdowns
- ✅ **Settings**: Manage app preferences and data

### Project Structure
```
lib/
├── main.dart              # App entry point
├── models/                # Data models
├── screens/               # App screens
├── widgets/               # Reusable widgets
├── providers/             # State management
└── utils/                 # Helper functions
```

## Testing

Run tests to ensure everything works:

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run specific test file
flutter test test/transaction_test.dart
```

## Code Quality

Check code quality and format:

```bash
# Analyze code
flutter analyze

# Format code
flutter format .

# Fix formatting issues
flutter format lib/ test/
```

## Building for Production

### Android APK
```bash
flutter build apk --release
```
The APK will be at: `build/app/outputs/flutter-apk/app-release.apk`

### iOS App (macOS only)
```bash
flutter build ios --release
```

## Troubleshooting

### Common Issues

1. **"Flutter not found"**
   - Ensure Flutter is in your PATH
   - Run `flutter doctor` to diagnose

2. **"No devices found"**
   - Start an emulator or connect a device
   - Run `flutter devices` to check

3. **"Pub get failed"**
   - Check internet connection
   - Try `flutter pub cache repair`

4. **Build errors**
   - Run `flutter clean`
   - Run `flutter pub get`
   - Try again

### Getting Help

- Check the [CONTRIBUTING.md](CONTRIBUTING.md) for detailed development guide
- Visit [Flutter documentation](https://docs.flutter.dev)
- Check [Flutter community](https://flutter.dev/community)

## What's Next?

Now that you have the app running:

1. **Explore the code**: Check out different screens in `lib/screens/`
2. **Modify UI**: Try changing colors or text
3. **Add features**: Implement data persistence or charts
4. **Run tests**: Ensure your changes don't break existing functionality

Happy coding! 🚀
