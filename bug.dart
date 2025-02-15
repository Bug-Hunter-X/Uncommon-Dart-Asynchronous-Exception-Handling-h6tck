```dart
import 'dart:async';

Future<void> main() async {
  // Simulate an asynchronous operation that might throw an exception
  try {
    await Future.delayed(Duration(seconds: 2), () {
      // Simulate an error condition (e.g., network request failure)
      throw Exception('Simulated network error');
    });
  } catch (e) {
    // Handle exceptions thrown by the asynchronous operation
    print('An error occurred: $e');
  } finally {
    // This 'finally' block runs always, even if an exception is thrown
    print('Finally block executed');
  }
}
```