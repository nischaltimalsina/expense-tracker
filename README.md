# Expense Tracker

A Flutter-based mobile application for tracking personal expenses and managing finances.

## Overview

Expense Tracker is a comprehensive financial management app that helps users track their income and expenses, categorize transactions, and visualize spending patterns through reports and charts. Built with Flutter, it provides a cross-platform solution for iOS and Android devices.

## Features

- **Transaction Management**: Add, view, and categorize income and expenses
- **Reports & Analytics**: Visualize spending patterns and financial summaries
- **Category System**: Organize transactions by customizable categories
- **Settings**: Customize app preferences, currency, and notifications

## Project Structure

```
expense-tracker/
├── lib/
│   ├── main.dart                 # Application entry point
│   ├── models/                   # Data models
│   ├── screens/                  # UI screens
│   │   ├── home_screen.dart      # Main dashboard
│   │   ├── add_transaction_screen.dart
│   │   ├── reports_screen.dart
│   │   └── settings_screen.dart
│   ├── widgets/                  # Reusable widgets
│   ├── providers/                # State management (Provider)
│   └── utils/                    # Utility functions and helpers
├── assets/                       # Images, fonts, and icons
│   ├── images/
│   ├── fonts/
│   └── icons/
├── test/                         # Unit and widget tests
├── pubspec.yaml                  # Dependencies and assets
└── README.md                     # This file
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Android Studio / VS Code with Flutter extensions
- iOS development setup (for iOS builds)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/nischaltimalsina/expense-tracker.git
   cd expense-tracker
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Development

### Running Tests

```bash
flutter test
```

### Building for Production

For Android:
```bash
flutter build apk --release
```

For iOS:
```bash
flutter build ios --release
```

## Technology Stack

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: Provider
- **UI Components**: Material Design 3

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.
