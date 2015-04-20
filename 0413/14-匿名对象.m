#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    @public
    int speed;
}
- (void)run;
@end


@implementation Car
- (void)run
{
    NSLog(@"速度为%dkm/h的车跑起来了",speed);
}
@end


int main()
{
    //不要写匿名对象的代码，会有内存泄露
    [Car new]->speed=300;
    [[Car new] run];  //每次调用new方法都在创建新的对象
    
    return 0;
    
}