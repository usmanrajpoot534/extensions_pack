part of 'package:flutter_extensions_pack/flutter_extensions_pack.dart';

/// Date utilities for `DateTime`.
extension DayOfDate on DateTime {
  /// Start of the day.
  ///
  /// ### Example:
  /// ```dart
  /// final date = DateTime(2025, 1, 1, 04:34:05);
  /// print(date.startOfDay); // Output: 2025/01/01 00:00:00
  /// ```
  DateTime get startOfDay => DateTime(year, month, day);

  /// End of the day.
  ///
  /// ### Example:
  /// ```dart
  /// final date = DateTime(2025, 01, 01, 04:34:05);
  /// print(date.endOfDay); // Output: 2025/01/01 23:59:59
  /// ```
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59);
}

/// Checks if a date is today.
extension DateTimeToday on DateTime {
  /// Returns `true` if the date is today.
  ///
  /// ### Example:
  /// ```dart
  /// final date = DateTime(2025, 01, 01);
  /// print(date.isToday); // Output: true
  ///
  /// final date = DateTime(1970, 01, 01);
  /// print(date.isToday); // Output: false
  /// ```
  bool get isToday =>
      year == DateTime.now().year &&
      month == DateTime.now().month &&
      day == DateTime.now().day;
}

/// Converts milliseconds to `DateTime`.
extension DateObject on int {
  /// Converts milliseconds to `DateTime`.
  /// ### Example:
  /// ```dart
  /// const milliseconds = 1735689635000;
  /// print(milliseconds.date); // Output: DateTime(2025, 01, 01 00:00:35)
  /// ```
  DateTime get date => DateTime.fromMillisecondsSinceEpoch(this);
}

/// Converts string to `DateTime`.
extension DateFromString on String {
  /// Parses a string into a `DateTime`.
  /// ### Example:
  /// ```dart
  /// const date = '2025-01-01';
  /// print(date.dateFromString); // Output: DateTime(2025, 01, 01)
  /// ```
  DateTime get dateFromString => DateTime.parse(this);
}

/// Formats `DateTime` using `intl` package.
extension FormattedDateTime on DateTime {
  /// Formats the date.
  /// ### Example:
  /// ```dart
  /// const format = 'yyyy-MM-dd';
  /// print(DateTime.now().format(format)); // Output: 2025-01-01
  /// ```
  String format(String format) {
    return DateFormat(format).format(this);
  }
}
