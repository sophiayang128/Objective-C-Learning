/*
 类名：Car
 属性：轮胎个数，速度
 行为：跑
 */

//函数：函数声明+定义（实现）
//类：类的声明+实现

//类的声明
//声明对象的属性和行为

#import <Foundation/Foundation.h>
@interface Car : NSObject   //Car具备创建对象的能力
{
    //声明对象属性(成员变量/实例变量，默认初始化为0)
    @public      //让外部指针间接访问对象内部的成员变量
    int wheels;
    int speed;  //xxxkm/h
    
}

//方法：名称，参数，返回值（声明，实现）
//只要是OC对象的方法，必须以减号-开头
//OC方法中任何数据类型都必须用小括号扩住
//OC方法中小括号之能扩住数据类型
- (void)run;

@end


//类的实现
@implementation Car

//方法的实现
- (void)run{
    NSLog(@"Car is running.");
}


@end

int main(){
    
    //利用类来创建对象
    //OC中，想执行任何行为都要写上中括号[行为执行者 行为名称]
    //[Car new];   //执行Car这个类的new行为来创建新对象,返回新对象地址
    
    //OC中只能有pointer来间接操作对象
    Car *p = [Car new];   //定义指针p来指向Car类型对象
    
    Car *p2 = [Car new];    //每次都会创建一个新的对象
    
    
    p->wheels = 4;
    p->speed = 250;
    
    p2->wheels = 2;
    p2->speed = 50;
    
    //给p
    [p run];
    [p2 run];
    
    NSLog(@"第一辆车子有%d个轮子，时速为：%dkm/h.",p->wheels,p->speed);
    NSLog(@"第二辆车子有%d个轮子，时速为：%dkm/h.",p2->wheels,p2->speed);

    
    
    return 0;  //自动回收所有内存
}
