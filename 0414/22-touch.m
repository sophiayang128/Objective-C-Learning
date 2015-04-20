
#import <Foundation/Foundation.h>
/*
self的用途：
 1.谁调用self，就代表谁
 2.在对象方法中可以利用self->成员变量名，访问当前对象内部的成员变量
 3.[self 方法名]，self处在对象方法中，self调用的就是另一个对象方法
 4.self可以代表类，谁调用方法，self代表谁
 5.self如果出现在对象方法中，self就代表对象，出现在类方法中，就代表对象
 */

@interface Dog : NSObject
- (void)bark;
- (void)run;

@end

@implementation Dog

- (void)bark
{
    NSLog(@"汪汪汪");
}

- (void)run
{
    [self bark];  //方法内调用方法
    NSLog(@"跑跑跑");
}


@end


int main()
{
    Dog *d=[Dog new];
    
    [d run];
    return 0;
}