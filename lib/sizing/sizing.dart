part of 'package:extensions_pack/extensions_pack.dart';

/// Screen size utilities.
extension ScreenSize on BuildContext {
  /// Returns the screen width.
  ///
  /// ### Example:
  /// ```dart
  /// SizedBox(
  ///   height: context.kWidth, // Takes the screen width.
  /// ),
  /// ```
  double get kWidth => MediaQuery.of(this).size.width;

  /// Returns the screen height.
  ///
  /// ### Example:
  /// ```dart
  /// SizedBox(
  ///   height: context.kHeight, // Takes the screen height.
  /// ),
  /// ```
  double get kHeight => MediaQuery.of(this).size.height;

  /// Returns the screen orientation.
  ///
  /// ### Example:
  /// ```dart
  /// Center(
  ///   child: context.kOrientation == Orientation.portrait
  ///       ? const Column(
  ///           mainAxisAlignment: MainAxisAlignment.center,
  ///           children: [
  ///             Text('Portrait Mode'),
  ///             Icon(Icons.portrait, size: 100),
  ///           ],
  ///         )
  ///       : const Row(
  ///           mainAxisAlignment: MainAxisAlignment.center,
  ///           children: [
  ///             Text('Landscape Mode'),
  ///             Icon(Icons.landscape, size: 100),
  ///           ],
  ///         ),
  ///   ),
  /// ```
  Orientation get kOrientation => MediaQuery.of(this).orientation;

  /// Returns the size of shortest side of the screen.
  ///
  /// ### Example:
  /// ```dart
  /// SizedBox(
  ///   height: context.shortestSide, // Takes the size of shortest side.
  /// ),
  /// ```
  double get kShortestSide => MediaQuery.of(this).size.shortestSide;

  /// Returns the device pixel ratio.
  ///
  /// ### Example:
  /// ```dart
  /// SizedBox(
  ///   height: context.devicePixelRatio, // Takes the device pixel ratio.
  /// ),
  /// ```
  double get kDevicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// Returns the view insets, which include the status bar and navigation bar.
  ///
  /// ### Example:
  /// ```dart
  /// Container(
  ///   padding: context.kViewInsets, // Takes the view insets of screen.
  /// ),
  /// ```
  EdgeInsets get kViewInsets => MediaQuery.of(this).viewInsets;
}
