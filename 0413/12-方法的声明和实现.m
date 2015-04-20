/*
 计算器类：
 方法：
 1.返回π
 2.计算某个数平方
 3.计算两个整数和
 
 */

#import <Foundation/Foundation.h>

@interface Caculator : NSObject
-(double)pi;

//方法名：square: （方法名包括冒号）
-(int)square:(int)num;  //OC方法中，一个参数对应一个冒号,冒号前面要给出参数描述信息


//-(int)sum:(int)num1 :(int)num2;
//方法名：sumWithNum1:andNum2:
-(int)sumWithNum1:(int)num1 andNum2:(int)num2; //建议方法名长得跟一个句子一样


@end

@implementation Caculator
-(double)pi
{
    return 3.14;
}

-(int)square:(int)num
{
    return num*num;
    
}

-(int)sumWithNum1:(int)num1 andNum2:(int)num2
{
    return num1+num2;
}



@end

int main()
{
    Caculator *caculate=[Caculator new];
    double a=[caculate pi];
    NSLog(@"π是%f",a);
    
    int b=[caculate square:10];
    NSLog(@"平方是%d",b);
    
    int c=[caculate sumWithNum1:10 andNum2:5];
    NSLog(@"和是%d",c);
    
    return 0;
}