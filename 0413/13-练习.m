/*
 设计一个方法，用来和其它车比较车速，返回车速的差距
 */

#import <Foundation/Foundation.h>
@interface Car : NSObject
{
    @public
    int speed;
}
-(int)compareSpeedWithOther:(Car *)other;

@end

@implementation Car
-(int)compareSpeedWithOther:(Car *)other
{
    if (speed>=other->speed) {
        return speed-other->speed;
    }
    else
        return other->speed-speed;
}



@end

int main()
{
    Car *c1=[Car new];
    c1->speed=100;
    
    Car *c2=[Car new];
    c2->speed=200;
    
    int a=[c1 compareSpeedWithOther:c2];
    NSLog(@"两辆车的车速差距为%dkm/h",a);
    return 0;
}