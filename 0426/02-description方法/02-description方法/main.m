//
//  main.m
//  02-description方法
//
//  Created by Sophia Tang on 15/4/26.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d",__LINE__);  //打印当前行号
        NSLog(@"%s",__FILE__);  //打印文件目录，但是NSLog输出c语言字符串的时候不能有中文
        printf("%s\n",__FILE__);
        NSLog(@"%s",__func__);  //输出函数名
        
        
        Class c = [Person class];
        
        //1.会调用类的+description方法
        //2.拿到+description方法的返回值（NSString *）显示到屏幕上
        NSLog(@"%@",c);
        
        
        Person *p = [[Person alloc] init];
        Person *p2 = [[Person alloc] init];
        p.age = 20;
        p.name = @"JACK";
        
        p2.age = 30;
        p2.name = @"ALICE";
        
        //默认情况下输出对象时，结果是<类名:内存地址>
        //1. 会调用对象p的-description方法
        //2. 那道-description方法的返回值（NSSring *）显示到屏幕上
        //3. -description方法默认返回<类名:内存地址>
        NSLog(@"%@",p); //打印对象用%@
        NSLog(@"%@",p2);
        
        //指针变量自己本身的地址
        NSLog(@"%p",&p);
        
        
        
    }
    return 0;
}
