/// Utility functions for formatting currency
class CurrencyFormatter {
  static String format(double amount, {String symbol = '\$'}) {
    return '$symbol${amount.toStringAsFixed(2)}';
  }

  static String formatWithSign(double amount, {String symbol = '\$'}) {
    final sign = amount >= 0 ? '+' : '';
    return '$sign$symbol${amount.toStringAsFixed(2)}';
  }
}

/// Utility functions for formatting dates
class DateFormatter {
  static String format(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  static String formatLong(DateTime date) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return '${months[date.month - 1]} ${date.day}, ${date.year}';
  }
}
