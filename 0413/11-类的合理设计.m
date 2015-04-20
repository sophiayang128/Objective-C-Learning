#import <Foundation/Foundation.h>

/*
 学生类
 属性：性别，生日，体重，喜欢的颜色，狗(体重，毛色，吃，跑 )
 方法：吃，跑，遛狗(让狗跑），喂狗（让狗吃）
 */

typedef enum
{
    SexMan,   //多以枚举类型名称开头
    SexWoman
}Sex;

typedef struct
{
    int year;
    int month;
    int day;

}Date;

typedef enum
{
    ColorBlack,
    ColorRed,
    ColorGreen
    
}Color;

@interface Dog : NSObject
{
    @public
    double weight;
    Color curColor;
}
-(void)eat;
-(void)run;

@end

@implementation Dog
-(void)eat
{
    weight+=1;
    NSLog(@"狗吃完这次后的体重是%fkg",weight);
}

-(void)run
{
    weight-=1;
    NSLog(@"狗run完这次后的体重是%fkg",weight);
    
}

@end


@interface Student : NSObject
{
    @public
    //固定答案用枚举
    Sex sex;  //性别
    Date birthday;   //生日
    double weight;   //体重（kg）
    Color favColor;  //最喜欢的颜色
    char *name;
    
    //重点
    Dog *dog;  //任何OC对象都是用指针来指的
    
    
    
}
-(void)eat;
-(void)run;
-(void)print;
-(void)walkDog;
-(void)feedDog;

@end

@implementation Student
-(void)eat
{
    weight+=1;
    NSLog(@"吃完这次后的体重是%fkg",weight);
}

-(void)run
{
    weight-=1;
    NSLog(@"run完这次后的体重是%fkg",weight);
    
}

-(void)print
{
    NSLog(@"性别=%d，喜欢的颜色=%d，姓名=%s，生日=%d-%d-%d",sex,favColor,name,birthday.year,birthday.month,birthday.day);
}

-(void)walkDog
{
    [dog run];
}

-(void)feedDog
{
    [dog eat];
}
@end

int main()
{
    Student *s=[Student new];
    
    Dog *d1=[Dog new];
    d1->curColor=ColorGreen;
    d1->weight=20;
    
    s->dog = d1; //对象中有对象
    [s walkDog];
    [s feedDog];
    
    s->weight=50;
    
    //性别
    s->sex=SexMan;
    
    //struct
    Date d={2011,9,10};   //只有定义变量的同时才可以赋值
    s->birthday=d;
    
    /*
    s->birthday.year=2011;
    s->birthday.month=9;
    s->birthday.day=10;
     */
    
    //name
    s->name="Jack";
    
    
    //color
    s->favColor=ColorBlack;
    
    [s eat];
    [s eat];
    
    [s run];
    [s run];
    
    [s print];
    return 0;
}