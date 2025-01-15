part of 'package:extensions_pack/extensions_pack.dart';

/// Adds sorting utilities to lists.
extension SortList<E> on List<E> {
  /// Sorts in ascending order.
  ///
  /// ### Example:
  /// ```dart
  /// final numbers = [1, 3, 2];
  /// print(numbers.sortAscending); // Output: [1, 2, 3]
  ///
  /// final names = ['Maria', 'Alisa', 'John'];
  /// print(list.sortAscending); // Output: ['Alisa', 'John', 'Maria']
  /// ```
  List<E> get sortAscending {
    final isNumeric = this is List<num> ||
        this is List<num?> ||
        this is List<int> ||
        this is List<int?> ||
        this is List<double> ||
        this is List<double?>;

    final isStringish = this is List<String> || this is List<String?>;

    if (isNumeric) {
      sort();
      return this;
    } else if (isStringish) {
      sort((a, b) => (a as String).length.compareTo((b as String).length));
      return this;
    } else {
      throw UnsupportedError("Type $E is not supported for sorting.");
    }
  }

  /// Sorts in descending order.
  ///
  /// ### Example:
  /// ```dart
  /// final numbers = [1, 3, 2];
  /// print(numbers.sortDescending); // Output: [3, 2, 1]
  ///
  /// final names = ['Maria', 'Alisa', 'John'];
  /// print(list.sortDescending); // Output: ['Maria', 'John', 'Alisa']
  /// ``````
  List<E> get sortDescending {
    final isNumeric = this is List<num> ||
        this is List<num?> ||
        this is List<int> ||
        this is List<int?> ||
        this is List<double> ||
        this is List<double?>;

    final isStringish = this is List<String> || this is List<String?>;

    if (isNumeric) {
      sort((a, b) => (b as num).compareTo(a as num));
    }
    if (isStringish) {
      sort((a, b) => (b as String).length.compareTo((a as String).length));
    }
    return this;
  }
}

/// Removes duplicates from a list.
extension UniqueList<E> on List<E> {
  /// Returns a unique list.
  ///
  /// ### Example:
  /// ```dart
  /// final list = [1, 2, 1];
  /// print(list.unique) // Output: [1, 2]
  /// ```
  List<E> get unique => Set<E>.from(this).toList();
}

/// Handles `IndexOutOfRangeException` for invalid index.
extension ListIndexHandler<E> on List<E?> {
  /// Returns the element at the given `index` in the list, or `null` if the
  /// index is out of bounds.
  ///
  /// This method provides a safe way to access elements in the list without
  /// throwing an `IndexOutOfRangeException`.
  ///
  /// ### Example:
  /// ```dart
  /// final list = [1, 2, 3];
  /// print(list.value(1)); // Output: 2
  /// print(list.value(5)); // Output: null
  /// ```
  E? value(int index) {
    if (index >= length) return null;
    return this[index];
  }
}

/// Returns the element of given key in [Map].
extension MapGetOrDefault<K, V> on Map<K, V> {
  /// Returns the value associated with the given `key`,
  ///
  /// or `defaultValue` if the key does not exists.
  ///
  /// ### Example:
  /// ```dart
  /// final map = {'name', 'John', 'email': 'john@example.com'};
  ///
  /// print(getOrDefault('name', 'Unknown')); // Output: John
  ///
  /// print(getOrDefault('email', 'NA')); // Output: john@example.com
  ///
  /// print(getOrDefault('age', 'undefined')); // Output: undefined
  /// ```
  V getOrDefault(K key, V defaultValue) =>
      containsKey(key) ? this[key]! : defaultValue;
}
