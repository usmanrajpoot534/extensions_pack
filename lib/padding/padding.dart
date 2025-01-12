part of 'package:extensions_pack/extensions_pack.dart';

/// Padding utilities.
extension PaddingExtension on num {
  /// Padding for all sides.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   padding: 16.padAll, // Adds padding of 16px from all sides.
  ///   child: Text("Hello Flutter"),
  /// ),
  /// ```
  EdgeInsets get padAll => EdgeInsets.all(toDouble());

  /// Horizontal padding.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   padding: 16.padX, // Adds horizontal padding of 16px.
  ///   child: Text("Hello Flutter"),
  /// ),
  /// ```
  EdgeInsets get padX => EdgeInsets.symmetric(horizontal: toDouble());

  /// Vertical padding.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   padding: 16.padX, // Adds vertical padding of 16px.
  ///   child: Text("Hello Flutter"),
  /// ),
  /// ```
  EdgeInsets get padY => EdgeInsets.symmetric(vertical: toDouble());

  /// Padding on the left.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   padding: 16.padLeft, // Adds padding of 16px from Left.
  ///   child: Text("Hello Flutter"),
  /// ),
  /// ```
  EdgeInsets get padLeft => EdgeInsets.only(left: toDouble());

  /// Padding on the right.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   padding: 16.padRight, // Adds padding of 16px from Right.
  ///   child: Text("Hello Flutter"),
  /// ),
  /// ```
  EdgeInsets get padRight => EdgeInsets.only(right: toDouble());

  /// Padding on the top.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   padding: 16.padTop, // Adds padding of 16px from Top.
  ///   child: Text("Hello Flutter"),
  /// ),
  /// ```
  EdgeInsets get padTop => EdgeInsets.only(top: toDouble());

  /// Padding on the bottom.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   padding: 16.padBottom, // Adds padding of 16px from Bottom.
  ///   child: Text("Hello Flutter"),
  /// ),
  /// ```
  EdgeInsets get padBottom => EdgeInsets.only(bottom: toDouble());
}
