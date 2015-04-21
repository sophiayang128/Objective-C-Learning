
#import <math.h>
#import "Circle.h"


@implementation Circle

// 半径的getter和setter
- (void)setRadius:(double)radius
{
    _radius = radius;
}
- (double)radius
{
    return _radius;
}

// 圆心的getter和setter
- (void)setPoint:(Point2D *)point
{
    _point = point;
}
- (Point2D *)point
{
    return _point;
}

// 判断跟其它圆是否重叠
- (BOOL)isInteractWithOther:(Circle *)other
{
    // return [Circle isInteractBetweenCircle1:self andCircle2:other];
    // 如果两个圆心距离小于半径和-->重叠
    Point2D *p1 = [self point];
    Point2D *p2 = [other point];
    
    // 圆心之间的距离
    double distance = [p1 distanceWithOther:p2];
    
    // 半径和
    double radiusSum = [self radius] + [other radius];
    
    return distance < radiusSum; // 关系运算符结果：1 or 0
    
}
// 判断两个类是否重叠
+ (BOOL)isInteractBetweenCircle1:(Circle *)c1 andCircle2:(Circle *)c2
{
    return [c1 isInteractWithOther:c2];
}


@end
