This bug is related to the use of `performSelector:withObject:afterDelay:` in Objective-C. The issue arises when the object on which the selector is performed is deallocated before the delay expires.  This leads to a crash with an exception similar to `-[<SomeObject> someSelector]: message sent to deallocated instance 0x...`.

Example:

```objectivec
@interface MyClass : NSObject
@end

@implementation MyClass
- (void)myMethod {
    NSLog(@