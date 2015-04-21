
#import <math.h>
#import "Point2D.h"


@implementation Point2D
//x的getter和setter
- (void)setX:(double)x
{
    _x=x;
}

- (double)x
{
    return _x;
}

//y的getter和setter
- (void)setY:(double)y
{
    _y=y;
}

- (double)y
{
    return _y;
}

// 同时设置x和y
- (void)setX:(double)x andY:(double)y
{
    /*
     self->x=x;
     self->y=y;*/
    
    [self setX:x];  //当setx的时候有可能会有过滤操作
    [self setY:y];
    
}

// 计算跟其它点的距离
- (double)distanceWithOther:(Point2D *)other
{
    //((x1-x2)的平方+(y1-y2)的平方)开根
    //对象方法中调用类方法
    return [Point2D distanceBetweenPoint1:self andPoint2:other];
}

// 计算两个点之间的距离
+ (double)distanceBetweenPoint1:(Point2D *)p1 andPoint2:(Point2D *)p2
{
    // x1-x2
    double xDelta=[p1 x]-[p2 x];
    //(x1-x2)平方
    double xDeltaPF=pow(xDelta,2);
    
    // y1-y2
    double yDelta=[p1 y]-[p2 y];
    //(y1-y2)平方
    double yDeltaPF=pow(yDelta,2);
    
    //返回距离
    return sqrt(xDeltaPF + yDeltaPF);
    
    
}

@end
