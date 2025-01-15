part of 'package:flutter_extensions_pack/flutter_extensions_pack.dart';

/// Navigation helpers.
extension RouterExtension on BuildContext {
  /// Navigates to the next page.
  ///
  /// ### Example:
  /// ```dart
  /// Center(
  ///   child: ElevatedButton(
  ///     onPressed: () {
  ///       context.push(NextPage());
  ///     },
  ///     child: Text('Go to the next page'),
  ///   ),
  /// ),
  /// ```
  Future<T?> push<T extends Object?>(Widget nextPage) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }

  /// Replaces the current page with another page.
  ///
  /// ### Example:
  /// ```dart
  /// Center(
  ///   child: ElevatedButton(
  ///     onPressed: () {
  ///       context.pushReplacement(NextPage());
  ///     },
  ///     child: Text('Go to the next page'),
  ///   ),
  /// ),
  /// ```
  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
      Widget nextPage) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }

  /// Pushes and removes until the next page.
  ///
  /// ### Example:
  /// ```dart
  /// Center(
  ///   child: ElevatedButton(
  ///     onPressed: () {
  ///       context.pushAndRemoveUntil(HomePage());
  ///     },
  ///     child: Text('Go to the home page'),
  ///   ),
  /// ),
  /// ```
  Future<T?> pushAndRemoveUntil<T extends Object?>(Widget nextPage) {
    return Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => nextPage),
      (route) => false,
    );
  }

  /// Pops the current page.
  ///
  /// ### Example:
  /// ```dart
  /// Center(
  ///   child: ElevatedButton(
  ///     onPressed: () {
  ///       context.pop();
  ///     },
  ///     child: Text('Go back'),
  ///   ),
  /// ),
  /// ```
  void pop<T extends Object?>([T? result]) {
    return Navigator.pop(this);
  }

  /// Exits the app.
  ///
  /// ### Example:
  /// ```dart
  /// Center(
  ///   child: ElevatedButton(
  ///     onPressed: () {
  ///       context.exitApp();
  ///     },
  ///     child: Text('Exit the app'),
  ///   ),
  /// ),
  /// ```
  Future<void> exitApp({bool? animated}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }
}
