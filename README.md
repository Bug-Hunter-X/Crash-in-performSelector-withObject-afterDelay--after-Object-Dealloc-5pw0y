# Objective-C performSelector Crash Bug

This repository demonstrates a common bug in Objective-C related to the `performSelector:withObject:afterDelay:` method. The bug occurs when the object scheduled to perform a selector is deallocated before the delay has expired.

## Bug Description
The code uses `performSelector:withObject:afterDelay:` to schedule a method call after a short delay. However, if the object is deallocated before the delay completes, the method call is made on a deallocated object, resulting in a crash.

## Reproduction
1. Clone the repository.
2. Open the project in Xcode.
3. Build and run the application.
4. Observe the crash after a short period.

## Solution
The solution involves using a weak reference to the object scheduled for the delayed execution. This ensures that if the object is deallocated, the selector is not called.

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.
