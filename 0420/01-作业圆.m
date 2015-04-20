// 设计一个类Circle, 用来表示二维平面中的圆
#import <foundation/foundation.h>
#import <math.h>
@interface Point2D : NSObject
{
    double _x; // x值
    double _y; // y值
}

// x值的getter和setter
- (void)setX:(double)x;
- (double)x;

// y值的getter和setter
- (void)setY:(double)y;
- (double)y;

// 同时设置x和y
- (void)setX:(double)x andY:(double)y;

// 计算跟其它点的距离
- (double)distanceWithOther:(Point2D *)other;
// 计算两个点之间的距离
+ (double)distanceBetweenPoint1:(Point2D *)p1 andPoint2:(Point2D *)p2;

@end

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

@interface Circle : NSObject
{
    double _radius;  // 半径
    Point2D *_point;  // 圆心（组合：圆内部有点对象）
    
}
// 半径的getter和setter
- (void)setRadius:(double)radius;
- (double)radius;

// 圆心的getter和setter
- (void)setPoint:(Point2D *)point;
- (Point2D *)point;

// 判断跟其它圆是否重叠
- (BOOL)isInteractWithOther:(Circle *)other;
// 判断两个类是否重叠
+ (BOOL)isInteractBetweenCircle1:(Circle *)c1 andCircle2:(Circle *)c2;



@end

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





int main()
{
    Circle *c1 = [Circle new];
    //创建圆心对象
    Point2D *p1 = [Point2D new];
    [p1 setX:10 andY:10];
    //先设置圆心
    [c1 setPoint:p1];
    [c1 setRadius:10];
    
    Circle *c2 = [Circle new];
    Point2D *p2 = [Point2D new];
    [p2 setX:30 andY:10];
    [c2 setPoint:p2];
    [c2 setRadius:10];
    
    BOOL judge = [c1 isInteractWithOther:c2];
    if (judge==1)
    {
        NSLog(@"两个圆是重叠的");
    }
    else
    {
        NSLog(@"两个圆是不重叠的");
    }
    
    
    //[[c1 point] setX:15];   // x变为15
    
    
    
    return 0;
}