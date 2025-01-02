To fix this, use a weak reference to `self` within a block to ensure the selector isn't called on a deallocated object.  Here's the corrected code:

```objectivec
@interface MyClass : NSObject
@end

@implementation MyClass
- (void)myMethod {
    NSLog(@