// 设计一个类Circle, 用来表示二维平面中的圆
/* 定义一个分为两个文件：.h声明文件（成员变量，方法的声明） .m实现文件（方法的实现）
   如果想要用某一个类，只要#import .h文件即可
 */
#import "Circle.h"
#import "Point2D.h"

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