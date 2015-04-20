#import <Foundation/Foundation.h>
/*
 多态：
 1.没有继承就没有多态
 2.代码的体现：父类类型的指针指向子类类型的对象
 3.好处：如果函数/方法参数中使用的是父类类型，可以传入父类，子类对象
 4.局限：父类类型的变量不能直接调用子类特有的方法，必须强转为子类类型变量后，才能直接调用子类特有方法
 */

//动物
@interface Animal : NSObject

- (void)eat;

@end

@implementation Animal
- (void)eat
{
    NSLog(@"Animal吃东西");
}

@end


//狗
@interface Dog : Animal
- (void)run;
@end

@implementation Dog

- (void)eat
{
    NSLog(@"Dog吃东西");
}

- (void)run
{
    NSLog(@"dog跑起来");
}


@end

//猫
@interface Cat : Animal

@end

@implementation Cat
- (void)eat
{
    NSLog(@"Cat吃东西");
}

@end

//用来喂动物的函数
//如果参数中使用的是父类类型，可以传入子类和父类对象
void feed(Animal *a)
{
    [a eat];
    
}

int main()
{
    //多态局限性：父类类型的变量不能用来调用子类的方法
    Animal *d1=[Dog new];  //编译器觉得d1是animal类，但其实d1是dog类型,不要这样写
    Dog *d2=(Dog *)d1;  //类型强转，将aa转为Dog *类型的变量
    [d2 run];
    
    Animal *aa=[Animal new];
    feed(aa);
    
    Dog *dd=[Dog new];  //Dog类型可以传给Animal类型
    feed(dd);
    
    Cat *cc=[Cat new];
    feed(cc);
    
    /*
    
    //NSString *s = [Cat new];   //warning
    
    //多种形态
    //Dog *d = [Dog new];  //Dog类型
    
    //多态：父类指针指向子类对象
    Animal *a=[Dog new];
    
    //调用方法时会检测对象的真实类型
    [a eat];  //调用真实类型的对象
    
    */
    
    return 0;
}