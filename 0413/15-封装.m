

//封装：隐藏细节，提高安全性
//如果有些属性值对于外界来说是只读的，那就不要set方法，只要get方法
#import <Foundation/Foundation.h>
@interface Student: NSObject
{
    //@public 成员变量不要用public
    int age;  //把设置成员变量封装起来，安全性
    int num;   //只读的学号
}
- (void)study;
//提供一个方法给外界设置age属性值
//set方法:命名规范->方法名必须以set开头，set后面跟上成员变量的名称，且首字母必须大写,返回值一定是void,一定要接受参数，且类型和成员变量的类型一致,形参的名称不能与成员变量名一致
- (void)setAge:(int)newAge;

//get方法：返回对象内部的成员变量,方法名要与成员变量一致
- (int)getAge;

- (int)getNum;

@end

@implementation Student
- (void)study
{
    NSLog(@"%d岁的学生在学习",age);
}

- (void)setAge:(int)newAge
{
    //对传进来的参数进行过滤
    if (newAge<=0) {
        newAge=1;
    }
    age=newAge;
}

- (int)getAge
{
    return age;
}

- (int)getNum
{
    return num;
}
@end


int main()
{
    Student *stu=[Student new];
    //stu->age=20;
    [stu setAge:-10];
    
    NSLog(@"学生是%d岁",[stu getAge]);
    
    [stu study];
    
    return 0;
}