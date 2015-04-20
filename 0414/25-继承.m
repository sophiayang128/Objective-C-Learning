#import <Foundation/Foundation.h>
/*
 1.父类的声明要写在子类的前面，实现可以写在后面
 2.OC中不允许子类和父类拥有相同的成员变量,但允许实现相同的方法
 3.重写：子类重新实现父类中的某个方法，覆盖父类以前的行为
 4.调用某个对象时，优先在当前类中找，再到父类中去找
 坏处：
 5.耦合性太强

 */
@interface Person : NSObject
{
    int _age;  //年龄
}
- (void)setAge:(int)age;
- (int)age;

- (void)run;
+ (void)test;
@end

@implementation Person
- (void)setAge:(int)age
{
    _age=age;
}
- (int)age
{
    return _age;
}

- (void)run
{
    NSLog(@"Person跑");
}

+ (void)test
{
    NSLog(@"Person+test");
}

@end



@interface Student : Person
{
    int _no;
    //int _age;   父类中已经有叫做_age的成员变量
}

+ (void)test2;
@end

@implementation Student
//重写，子类重新实现父类中的某个方法，覆盖父类以前的行为
- (void)run
{
    NSLog(@"Student跑");
}

+ (void)test
{
    NSLog(@"Student+test");
}

+ (void)test2
{
    [self test];
}

@end
int main()
{
    [Person test];
    [Student test2];
    
    Student *s=[Student new];
    
    [s run];  //优先检测自己本身是否有run方法，然后再找父类
    return 0;
}