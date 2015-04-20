#import <Foundation/Foundation.h>

//编译器从上往下编译
//声明一定要放前面，实现可以放在后面

/*
 方法和函数的区别：
 1.对象方法都是-开头
 2.方法的声明必须写在interface中，实现必须写在implementation中
 3.对象方法只能由对象来调用，不要和函数调用混淆
 4.文件的任何地方都可以写函数,包括@impletation内部，但是在@interface内部可能会被忽略
 5.对象方法归类或对象所有
 6.函数调用不依赖于对象，所以函数中不可以直接通过成员变量名访问某个对象的成员变量
 
 */

@interface Car : NSObject
{
    @public
    int wheels;  //不允许赋值,不能将成员变量当做C语言中的变量来使用
}
-(void)run;
-(void)fly;

@end

@implementation Car
void test()
{
    NSLog(@"调用了test函数");
}
-(void)run
{
    test();
    NSLog(@"%d个轮子的车跑起来了",wheels);
}
-(void)fly
{
    NSLog(@"fly");
}
@end


@interface Person : NSObject
{
    @public
    int age;
    int weight;
}
-(void)walk;  //方法只能写在方法里面

@end

@implementation Person

-(void)walk
{
    NSLog(@"walk");
}

@end

int main()
{
    Car *c1=[Car new];
    c1->wheels=5;
    [c1 run];
    [c1 fly];
    
    Person *p1=[Person new];
    p1->age=20;
    p1->weight=50;
    [p1 walk];
    
    return 0;
}