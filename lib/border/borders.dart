part of 'package:flutter_extensions_pack/flutter_extensions_pack.dart';

/// Border radius utilities.
extension BorderExtension on num {
  /// Circular border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.circularRadius, // Makes all corners (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get circularRadius => BorderRadius.circular(toDouble());

  /// Left border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.leftRadius, // Makes left corners (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get leftRadius {
    final radius = Radius.circular(toDouble());
    return BorderRadius.horizontal(left: radius);
  }

  /// Right border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.rightRadius, // Makes right corners (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get rightRadius {
    final radius = Radius.circular(toDouble());
    return BorderRadius.horizontal(right: radius);
  }

  /// Top border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.topRadius, // Makes top corners (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get topRadius {
    final radius = Radius.circular(toDouble());
    return BorderRadius.vertical(top: radius);
  }

  /// Bottom border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.bottomRadius, // Makes bottom corners (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get bottomRadius {
    final radius = Radius.circular(toDouble());
    return BorderRadius.vertical(bottom: radius);
  }

  /// Top-left corner border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.topLeftRadius, // Makes top-left corner (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get topLeftRadius {
    return BorderRadius.only(topLeft: Radius.circular(toDouble()));
  }

  /// Top-right corner border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.topRightRadius, // Makes top-right corner (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get topRightRadius {
    return BorderRadius.only(topRight: Radius.circular(toDouble()));
  }

  /// Bottom-left corner border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.bottomLeftRadius, // Makes bottom-left corner (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get bottomLeftRadius {
    return BorderRadius.only(bottomLeft: Radius.circular(toDouble()));
  }

  /// Bottom-left corner border radius.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   child: Text("Hello Flutter"),
  ///   decoration: BoxDecoration(
  ///     borderRadius: 8.bottomRightRadius, // Makes bottom-right corner (8px) rounded.
  ///   ),
  /// ),
  /// ```
  BorderRadius get bottomRightRadius {
    return BorderRadius.only(bottomRight: Radius.circular(toDouble()));
  }
}
