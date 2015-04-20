
#import <Foundation/Foundation.h>
@interface Person:NSObject
{
    //char *name;
    NSString *_name;
}
@end

@implementation Person



@end
int main()
{
    //最简单的创建字符串的方式
    NSString *str= @"itcast";
//    char *name="cast";
    
//    NSLog(@"%s",name);
    NSLog(@"我在%@上课",str);
    
    //创建OC字符串的另一种方式
    int age=10;
    int no=5;
    NSString *newName= @"哈哈Jack";
    int size=[newName length];  //length算的是字数
    NSLog(@"长度是%d",size);
    
    NSString *new=[NSString stringWithFormat:@"My age is %d,my no is %d,my name is %@",age,no,newName];
    NSLog(@"%@",new);
    NSLog(@"新的句子长度为%ld",[new length]);  //返回unsigned long，字数包括空格
    
   
    return 0;
}