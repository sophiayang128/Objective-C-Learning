#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
}
- (void)setAge:(int)age;
- (int)age;

- (void)test;


@end

@implementation Person

- (void)setAge:(int)age;
{
    //_age=age;
    self->age=age;
}

- (int)age
{
    return _age;
}

- (void)test
{
    
    //int age1=_age;  //定义变量之前，先把成员变量取出来
    
    int _age=20;   //就近原则，会先访问这个_age
    NSLog(@"Person年龄是%d岁",self->_age);  //self是个指针，指向调用这个方法的对象
}


@end
int main()
{
    Person *p =[Person new];
    
    [p setAge:10];
    [p test];
    return 0;
}