part of 'package:flutter_extensions_pack/flutter_extensions_pack.dart';

/// Validates a nullable or  string.
extension StringChecker on String? {
  /// Checks if string exists and is not empty.
  /// ### Example:
  /// ```dart
  /// print("".existAndNotEmpty); // Output: false
  ///
  /// String? str;
  /// print(str.existAndNotEmpty); // Output: false
  ///
  /// print("Hello".existAndNotEmpty); // Output: true
  /// ```
  bool get existAndNotEmpty =>
      this != null && (this?.trim().isNotEmpty ?? false);
}

/// Reverses a string.
extension StringReversal on String {
  /// Reverses the string.
  ///
  /// ### Example:
  /// ```dart
  /// print("Flutter".reverse()); // Output: rettulF
  /// ```
  String reverse() => split('').reversed.join('');
}

/// Validates email format.
extension EmailValidation on String {
  /// Returns `true` or `false` on the basis of email validity.
  ///
  /// ### Example:
  /// ```dart
  /// print("abc.com".validateEmail); // Output: false
  /// print("example@email.com".validateEmail); // Output: true
  /// ```
  bool get validateEmail {
    const source =
        r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
    return RegExp(source).hasMatch(this);
  }
}

/// Converts string to uppercase , titlecase.
extension StringCasingExtension on String {
  /// Converts the string to uppercase.
  ///
  /// ### Example
  /// ```dart
  /// const name = 'alisa';
  /// print(name.toCapitalized); // Output: Alisa
  /// ```
  String get toCapitalized =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  /// Converts the string to title case.
  ///
  /// ### Example
  /// ```dart
  /// const str = 'hello flutter';
  /// print(name.toTitleCase); // Output: Hello Flutter
  /// ```
  String get toTitleCase => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized)
      .join(' ');
}

/// Greets the user based on the time of day.
extension Greeting on String {
  /// Greets the user based on the current time of day.
  ///
  /// ### Example
  /// ```dart
  /// const user = 'John';
  /// print(user.greet); // Output: Good Morning, John!
  /// ```
  String get greet {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good morning, $this!';
    } else if (hour < 17) {
      return 'Good afternoon, $this!';
    } else {
      return 'Good evening, $this!';
    }
  }
}
