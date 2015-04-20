#import <Foundation/Foundation.h>
@interface Person : NSObject
- (void)test;
+ (void)test;

- (void)test1;
+ (void)test2;

- (void)haha1;
+ (void)haha2;

@end

@implementation Person
- (void)test
{
    NSLog(@"调用了test对象方法");
    //[self test]; //死循环
}

+ (void)test
{
    NSLog(@"调用了test类方法");
    
    //[self test]; //死循环
}

- (void)test1
{
    [self test];  //调用对象方法
}
+ (void)test2
{
    [self test];  //调用类方法
}

- (void)haha1
{
    NSLog(@"调用了haha1");
}
+ (void)haha2
{
    NSLog(@"调用了haha2");
    //[self haha1]; 找不到haha1类方法
}



@end
int main()
{
    [Person test];
    Person *p = [Person new];
    
    [p test1];
    return 0;
}