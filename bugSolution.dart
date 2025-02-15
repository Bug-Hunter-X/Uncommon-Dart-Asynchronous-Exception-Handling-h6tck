```dart
import 'dart:async';

Future<void> main() async {
  // Simulate an asynchronous operation that might throw an exception
  try {
    await Future.delayed(Duration(seconds: 2), () {
      // Simulate an error condition (e.g., network request failure)
      throw Exception('Simulated network error');
    });
  } on Exception catch (e) {
    // Handle specific Exception types
    print('An Exception occurred: $e');
  } on TimeoutException catch (e) {
    // Handle TimeoutException separately
    print('A timeout occurred: $e');
  } catch (e, stackTrace) {
    // Catch other unexpected errors and print the stack trace for debugging.
    print('An unexpected error occurred: $e');
    print('Stack trace: $stackTrace');
  } finally {
    // This 'finally' block runs always, even if an exception is thrown
    print('Finally block executed');
  }
}
```