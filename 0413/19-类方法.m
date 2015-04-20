
#import <Foundation/Foundation.h>
/*
 对象方法：以-开头
        只能对象调用
 类方法：以+开头
        只能用类调用
 
 可以允许类方法和对象方法同名
 类方法不可以访问成员变量
 
 类方法好处：不依赖于对象，执行效率高（尽量用类方法）
 使用场合：当方法内部不需要使用成员变量时，就可以改为类方法
 */
@interface Person : NSObject
{
    int age; //只有对象才有成员变量
}

// -开头是对象方法
//类方法都是以+开头
+ (void)printClassName;
+ (void)test;
- (void)test; //两个对象方法不一样


@end

@implementation Person

+ (void)printClassName
{
    NSLog(@"这个类叫做Person");  //类方法不依赖于对象，所以实例变量不能在类方法中访问
}

- (void)test
{
    NSLog(@"调用了对象方法");
    
    [Person test];  //对象里可以调用类方法
}

+ (void)test
{
    //[Person test]; 还是会死循环，但是不会输出任何文字
    
    NSLog(@"调用了类方法");
    
    //[Person test]; 引发死循环
}


@end
int main()
{
    [Person printClassName];  //没有产生对象
    Person *p=[Person new];  //类方法，且只能被类调用
    
    //系统会认为是对象方法,所以去搜索-开头的方法
    [p test];
    [Person test];
    
    return 0;
}