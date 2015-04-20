#import <Foundation/Foundation.h>
@interface Person : NSObject
- (void)test;
@end

@implementation Person
- (void)test
{
    NSLog(@"hahaha");
}
@end

//闪退：运行时出错

int main()
{
    //经典错误：-[Person test]: unrecognized selector sent to instance 0x7fb4e8c13d90
    Person *p=[Person new];
    [p test];  //编译不报错只出现warning--》弱语法，运行才会检测对象有没有实现相应的方法
    return 0;
}