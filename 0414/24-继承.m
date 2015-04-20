#import <Foundation/Foundation.h>
/*
 继承的好处：
 1.抽取重复代码
 2.建立了类之间的联系
 3.子类可以拥有父类中所有的成员变量和方法
 
 注意点：
 1.基本所有类的root class都是NSObject
 2.子类中属性和方法总比父类多
 */

/*********Animal声明*************/
@interface Animal : NSObject
{
    int _age;  //年龄
    double _weight;   //体重
}
- (void)setAge:(int)age;
- (int)age;

- (void)setWeight:(double)weight;
- (double)weight;

@end

@implementation Animal
- (void)setAge:(int)age
{
    _age=age;
}
- (int)age
{
    return _age;
}

- (void)setWeight:(double)weight
{
    _weight=weight;
}
- (double)weight
{
    return _weight;
    
}

@end

/******Dog声明************/
//继承了Animal，拥有Animal里面所有成员变量和方法
//Animal称为父类
//Dog和Cat称为子类
@interface Dog : Animal

@end

@implementation Dog

@end

/********Cat声明**********/
@interface Cat : Animal

@end

@implementation Cat

@end

int main()
{
    Dog *d=[Dog new];
    [d setAge:10];
    NSLog(@"age=%d",[d age]);  //父类中拥有这个方法
    return 0;
}