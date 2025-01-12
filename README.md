# Flutter Extensions Pack

A comprehensive Dart extensions package designed to simplify and enhance Flutter development. This package introduces utilities for padding, spacing, border radius, date-time operations, string manipulation, and much more.

## Features

- **Spacing**: Easily add horizontal and vertical space.
- **Padding**: Simplify the creation of `EdgeInsets`.
- **Border Radius**: Quickly define border radius.
- **Date-Time Utilities**: Manipulate and format dates.
- **String Manipulation**: Reverse strings, capitalize text, and validate emails.
- **Screen Utilities**: Get screen dimensions.
- **Map and List Extensions**: Safely access elements, sort lists, and remove duplicates.
- **Navigation Helpers**: Simplify page navigation.
- **Styling**: Predefined text styles.
- **Snackbars**: Access Snackbars of each category (simple, success, error)

## Installation

Add the following line to your `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  extensions_pack: ^1.0.0
```

Run `flutter pub get` to fetch the package.

## Usage

### 1. Spacing Extensions

Easily add spacing with `spaceX` and `spaceY`.

```dart
10.spaceX; // Horizontal space
20.spaceY; // Vertical space
```

### 2. Padding Extensions

Simplify creating paddings with extensions like `padAll`, `padX`, `padY`, etc.

```dart
Container(
  padding: 16.padAll, // Padding for all sides
  child: Text('Hello, World!'),
);

Container(
  padding: 8.padX, // Horizontal padding
  child: Text('Flutter'),
);
```

### 3. Border Radius Extensions

Quickly define border radii for widgets.

```dart
Container(
  decoration: BoxDecoration(
    borderRadius: 10.circularRadius, // Circular radius
  ),
);

Container(
  decoration: BoxDecoration(
    borderRadius: 15.horizontalRadius, // Horizontal radius
  ),
);
```

### 4. Date-Time Utilities

Manipulate and format `DateTime` objects with ease.

```dart
DateTime now = DateTime.now();
DateTime startOfDay = now.startOfDay;
DateTime endOfDay = now.endOfDay;

// Format date
String formatted = now.format("yyyy-MM-dd");

// Add business days
DateTime future = now.addBusinessDays(5);
```

### 5. String Manipulation

Perform common string operations effortlessly.

```dart
"flutter".toCapitalized; // "Flutter"
"hello world".toTitleCase; // "Hello World"

"example@gmail.com".validateEmail; // true
"Hello".reverse(); // "olleH"
```

### 6. Navigation Helpers

Simplify navigation between screens.

```dart
context.push(NextPage());
context.pushReplacement(AnotherPage());
context.pushAndRemoveUntil(HomePage());
```

### 7. Map and List Utilities

Safely access elements, sort, or remove duplicates.

```dart
Map<String, String> data = {"key": "value"};
String value = data.getOrDefault("key", "default");

List<int> numbers = [3, 1, 2, 2];
numbers.unique; // [3, 1, 2]
```

### 8. Screen Size Utilities

Get screen dimensions directly.

```dart
final screenWidth = context.kWidth;
final screenHeight = context.kHeight;
```

### 9. Styling Utilities

Use predefined text styles.

```dart
Text(
  'Hello',
  style: context.style24W700,
);
```

## Example Project

Check out the [example project](https://github.com/usmanrajpoot534/extensions_pack/tree/master/example) to see these extensions in action.

## Contribution

Contributions are welcome! If you have ideas for new extensions or improvements, feel free to open an issue or submit a pull request.

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

Apache License

&#x20;                          Version 2.0, January 2004

&#x20;                       http\://www\.apache.org/licenses/

