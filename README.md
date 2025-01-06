# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart: improper exception handling in asynchronous operations. The example showcases how a `try-catch` block can catch exceptions during an asynchronous `http` request, but then rethrows them for more robust error management.

## The Problem

The original code only prints the error to the console using `print()`, which is insufficient for production apps. A more robust solution involves handling the exception at a higher level or using error-handling libraries.