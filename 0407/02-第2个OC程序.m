
/*
 主头文件：最主要的头文件
 */
//#import用途：1.同#include，拷贝文件的内容
//2.自动防止文件内容被重复拷贝

//NSObjCRuntime.h中有NSLog的申明
//#import <Foundation/NSObjCRuntime.h>

//只需要包含foundation框架的主头文件

/*
 运行过程
 1> 编写OC源文件：.m .c
 2> 编译：cc -c xxx.m xxx.c
 3> 链接：cc xxx.o xxx.o -framework Foundation
 4> 运行：./a.out
 
 */

#import <Foundation/Foudation.h>

int main(){
    NSLog(@"Hello 2nd OC");    //NSLog输出内容自动换行
    return 0;
}