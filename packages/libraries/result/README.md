
# Result

The `Result` class, along with its subclasses `ValueResult` and `ErrorResult`, provides a clean and expressive way to handle success and error scenarios in a type-safe manner. This feature enhances developer experience by promoting clarity and reducing boilerplate code associated with result handling.

## Key Features

### Type Safety

- **Value and Error Identification:** The `Result` class introduces `isValueResult` and `isErrorResult` properties, allowing developers to easily identify whether the result is a success or an error.

- **Safe Value Retrieval:** The `value` property ensures safe retrieval of the result value, reducing the risk of unintended use when handling success scenarios.

- **Safe Error Retrieval:** The `error` property provides a secure way to access the error in error scenarios, minimizing the chances of misuse.

### Functional Approach

- **Fold Function:** The `fold` function enables a functional approach to result handling. Developers can easily define callbacks for both success and error scenarios, promoting a concise and readable code structure.

### Subclassing for Extensibility

- **ValueResult:** Subclass for representing successful results, encapsulating the success value.

- **ErrorResult:** Subclass for representing error results, encapsulating the exception or error information.

## Usage

1. **Create a Result Instance:**
 ```dart  
  Result<int, Exception> result = ValueResult(42);
  ```

2. **Check the Result type:**
 ```dart  
if (result.isValueResult) {
	// Handle success scenario 
	print(result.value); 
} else if (result.isErrorResult) {
	 // Handle error scenario 
	 print(result.error.message);
}
  ```

3. **You can also fold!**
```dart  
String resultMessage = result.fold(
	(value) =>'Success: $value', 
	(error) => 'Error: ${error.message}',
);
print(resultMessage);
```

### Complete example
```dart  
// Example usage with a function that returns a Result
Result<int, CustomException> divide(int dividend, int divisor) {
  try {
    if (divisor == 0) {
      throw Exception('Division by zero is not allowed');
    }
    return ValueResult(dividend ~/ divisor);
  } catch (e) {
    return ErrorResult(Exception('An error occurred during division'));
  }
}

void main() {
  Result<int, CustomException> result = divide(10, 2);

  String message = result.fold(
    (value) => 'Result: $value',
    (error) => 'Error: ${error.message}',
  );

  print(message);
}
```
