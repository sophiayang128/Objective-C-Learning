#import <Foundation/Foundation.h>
#import "Point2D.h"
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