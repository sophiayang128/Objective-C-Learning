/*
 僵尸
 跳跃僵尸，舞王僵尸，铁桶僵尸
 
 */
/*********僵尸类*************/
#import <Foundation/Foundation.h>
/*
 super作用
 1.直接调用父类中的某个方法
 2.super处在对象方法中，那么就会调用父类的对象方法
   super处在类方法中，那么就会调用父类的类方法
 3.常见使用场景：子类重写父类的方法时想保留父类的一些行为
 */

@interface Zoombie : NSObject

- (void)walk;

- (void)test;
+ (void)test;
@end

@implementation Zoombie
- (void)walk
{
    NSLog(@"往前走两步");
}

- (void)test
{
    NSLog(@"Zoombie-test");
    
}
+ (void)test
{
    NSLog(@"Zoombie+test");
}

@end

/************跳跃僵尸***********/
@interface JumpZoombie : Zoombie
+ (void)hahaha;
- (void)hahaha2;

@end

@implementation JumpZoombie
//重写
- (void)walk
{
    NSLog(@"跳两下");
    
    //NSLog(@"往前走两步");
    //[self walk];  //死循环
    //调用父类的walk方法
    [super walk];
    
}

+ (void)hahaha
{
    [super test]; //调用父类的类方法
}

- (void)hahaha2
{
    [super test]; //调用父类的对象方法
}

@end

int main()
{
    JumpZoombie *jz=[JumpZoombie new];
    [jz walk];
    [JumpZoombie hahaha];
    [jz hahaha2];
    return 0;
}