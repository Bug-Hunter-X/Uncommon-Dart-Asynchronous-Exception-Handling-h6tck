# Uncommon Dart Asynchronous Exception Handling

This repository demonstrates a common scenario in asynchronous Dart programming: handling exceptions thrown by asynchronous operations.  The example showcases the use of `try-catch-finally` blocks to manage exceptions and ensure cleanup operations are performed regardless of success or failure.

## Bug

The `bug.dart` file contains code simulating an asynchronous operation (e.g., a network request) that might throw an exception. If an exception occurs, the `catch` block will print an error message. The `finally` block executes regardless of whether an exception was thrown, ensuring that any necessary cleanup (closing resources etc.) happens.

## Solution

The `bugSolution.dart` file provides a solution to handle exceptions with more robust error handling. The solution does not change the core functionlity of the bug.dart file but offers best practises in exception handling.

## How to Run

1. Clone the repository.
2. Run `dart bug.dart` in your terminal. 
3. Observe the output. The output demonstrates how the finally block is always executed despite the exception being thrown.

## Note

This example focuses on demonstrating the behavior of asynchronous exception handling in Dart.  In real world scenarios, you would likely implement more sophisticated error handling and logging mechanisms.