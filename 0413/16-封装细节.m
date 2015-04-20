
#import <Foundation/Foundation.h>
typedef enum{
    SexMan,
    SexWoman
}Sex;
@interface Student: NSObject
{
    //成员变量名一定要以_开头
    //好处：让成员变量和get方法的名称，局部变量区分开来
    int _no;
    Sex _sex;
    
}
//sex的set和get方法
- (void)setSex:(Sex)sex;
- (Sex)sex;

//number的set和get
- (void)setNo:(INT)no;
- (int)no;

@end

@implementation Student

- (void)setSex:(Sex)sex
{
    _sex=sex;
}
- (Sex)sex
{
    return _sex;
    
}

- (void)setNo:(INT)no
{
    _no=no;
    
}
- (int)no
{
    return _no;
}
@end

int main()
{
    Student *stu=[Student new];
    [stu setSex:SexMan];
    [stu setNo:10];
    
    [stu sex];
    [stu no];
    
    return 0;
}