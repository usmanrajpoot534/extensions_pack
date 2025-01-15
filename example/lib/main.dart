import 'package:extensions_pack/extensions_pack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data for extensions
    DateTime now = DateTime.now();
    List<int> numbers = [1, 2, 3, 2, 4, 1];
    List<String?> names = ["Eve", "Bob", "Charlie", "Alice", "David"];

    return Scaffold(
      appBar: AppBar(title: const Text("Extensions Pack Example")),
      body: Padding(
        padding: 16.padAll,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Spacing Extensions
              Text(
                "Spacing Extensions".toCapitalized,
                style: context.style24W700,
              ),

              10.spaceY,
              Container(
                color: Colors.blue,
                width: 200,
                height: 100.spaceY.height,
                child: const Text('Spacing (200 X 100)'),
              ),

              // Padding Extensions
              Text("Padding Extensions".toTitleCase,
                  style: context.style24W700),
              8.spaceY,
              Container(
                padding: 8.padX,
                color: Colors.amber,
                child: const Text("Horizontal Padding: 8.padX"),
              ),
              8.spaceY,
              Container(
                padding: 12.padY,
                color: Colors.green,
                child: const Text("Vertical Padding: 12.padY"),
              ),

              // Border Radius Extensions
              16.spaceY,
              Text("Border Radius Extensions".toCapitalized,
                  style: context.style24W700),
              8.spaceY,
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: 20.circularRadius,
                ),
              ),

              // SnackBar Extensions
              16.spaceY,
              Text(
                "SnackBar Extensions".toCapitalized,
                style: context.style24W700,
              ),
              8.spaceY,
              ElevatedButton(
                onPressed: () {
                  context.showSuccessSnack('User added successfully');
                },
                child: const Text('Show Success Snackbar'),
              ),

              8.spaceY,
              ElevatedButton(
                onPressed: () {
                  context.showErrorSnack('User deleted successfully');
                },
                child: const Text('Show Error Snackbar'),
              ),
              8.spaceY,
              ElevatedButton(
                onPressed: () {
                  context.showSnack('Make things easy with extensions pack');
                },
                child: const Text('Bonus'),
              ),

              // Date and Time Extensions
              16.spaceY,
              Text(
                "Date Extensions".toCapitalized,
                style: context.style24W700,
              ),
              8.spaceY,
              Text("Today: ${now.isToday}"),
              Text("Start of Day: ${now.startOfDay}"),
              Text("End of Day: ${now.endOfDay}"),

              // String Extensions
              16.spaceY,
              Text(
                "String Extensions".toCapitalized,
                style: context.style24W700,
              ),
              8.spaceY,
              Text("Reversed: ${'Flutter'.reverse()}"),
              Text("Greeting: ${'Developer'.greet}"),
              Text("Validate Email: ${'test@example.com'.validateEmail}"),

              // Number Extensions
              16.spaceY,
              Text(
                "Number Extensions".toCapitalized,
                style: context.style24W700,
              ),
              8.spaceY,
              Text("To Amount: '1234567 =>' ${1234567.toAmount}"),
              Text("Negative To Zero: -5 => ${(-5).negativeToZero}"),

              // List Extensions
              16.spaceY,
              Text("List Extensions".toCapitalized, style: context.style24W700),
              8.spaceY,
              Text("Original: $numbers"),
              Text("Unique: ${numbers.unique}"),
              Text("Value at Index 2: ${numbers.value(2)}"),
              Text("Ascending sort: ${numbers.sortAscending}"),
              Text("Ascending sort: ${names.sortDescending}"),

              // Screen Size Extensions
              16.spaceY,
              Text(
                "Screen Size Extensions".toCapitalized,
                style: context.style24W700,
              ),
              8.spaceY,
              Text("Width: ${context.kWidth}"),
              Text("Height: ${context.kHeight}"),

              // Navigation Extensions
              16.spaceY,
              Text(
                "Navigation Extensions".toCapitalized,
                style: context.style24W700,
              ),
              8.spaceY,
              ElevatedButton(
                onPressed: () {
                  context.push(const NextPage());
                },
                child: const Text("Navigate to Next Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Next Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop(); // Using navigation back
          },
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}
