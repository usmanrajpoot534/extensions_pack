part of 'package:flutter_extensions_pack/flutter_extensions_pack.dart';

/// Converts negative number to 0 (zero).
extension PossitiveNumber on num {
  /// Converts negative number to 0 (zero).
  /// Example:
  /// ```dart
  /// const number = -5;
  /// print(number.negativeToZero); // Output: 0
  /// ```
  num get negativeToZero => this < 0 ? 0 : this;
}

/// Formats number as amount with commas.
extension ConvertToAmount on num {
  /// Formats number as amount with commas.
  /// Example:
  /// ```dart
  /// const amount = 2459057;
  /// print(amount.toAmount); // Output: 2,459,057
  /// ```
  String get toAmount => toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
}
