part of 'package:flutter_extensions_pack/flutter_extensions_pack.dart';

extension SnackMessenger on BuildContext {
  /// Displays a generic SnackBar with a message.
  ///
  /// [context] The BuildContext to show the SnackBar in.
  /// [msg] The message to display in the SnackBar.
  /// [duration] The duration for which the SnackBar should be shown. If not provided, defaults to 4000 milliseconds.
  ///
  /// ### Example
  /// ```dart
  /// Center(
  ///   child: ElevatedButton(
  ///     onPressed: () {
  ///       context.showSnack('Stock Updated');
  ///     },
  ///     child: Text('Updated Stock'),
  ///   ),
  /// ),
  /// ```
  void showSnack(String msg, {Duration? duration}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: duration ?? const Duration(milliseconds: 4000),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Displays an error SnackBar with a red background.
  ///
  /// [context] The BuildContext to show the SnackBar in.
  /// [msg] The error message to display in the SnackBar.
  /// [duration] The duration for which the SnackBar should be shown. If not provided, defaults to 4000 milliseconds.
  ///
  /// ### Example
  /// ```dart
  /// Center(
  ///   child: ElevatedButton(
  ///     onPressed: () {
  ///       context.showErrorSnack('Item Deleted');
  ///     },
  ///     child: Text('Delete Item'),
  ///   ),
  /// ),
  /// ```
  void showErrorSnack(String msg, {Duration? duration}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: duration ?? const Duration(milliseconds: 4000),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Displays a success SnackBar with a green background.
  ///
  /// [context] The BuildContext to show the SnackBar in.
  /// [msg] The success message to display in the SnackBar.
  /// [duration] The duration for which the SnackBar should be shown. If not provided, defaults to 4000 milliseconds.
  ///
  /// ### Example
  /// ```dart
  /// Center(
  ///   child: ElevatedButton(
  ///     onPressed: () {
  ///       context.showSnack('New Item Added');
  ///     },
  ///     child: Text('Add Item'),
  ///   ),
  /// ),
  /// ```
  void showSuccessSnack(String msg, {Duration? duration}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: duration ?? const Duration(milliseconds: 4000),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
