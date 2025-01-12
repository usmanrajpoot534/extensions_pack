part of 'package:extensions_pack/extensions_pack.dart';

/// Adds spacing as a `SizedBox` widget.
extension SpaceXY on num {
  /// Horizontal space as `SizedBox`.
  ///
  /// ### Example:
  /// ```dart
  /// Textt('First Widget'),
  /// 12.spaceX, // Adds spce of 12px
  /// Text('Second Widget),
  /// ```
  SizedBox get spaceX => SizedBox(width: toDouble());

  /// Vertical space as `SizedBox`.
  ///
  /// ### Example:
  /// ```dart
  /// 20.spaceY
  /// ```
  SizedBox get spaceY => SizedBox(height: toDouble());
}
