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
        Person *p = [[Person alloc] init];
        p.age = 20;
        p.name = @"JACK";
        
        //默认情况下输出对象时，结果是<类名:内存地址>
        //1. 会调用对象p的-description方法
        //2. 那道-description方法的返回值（NSSring *）显示到屏幕上
        //3. -description方法默认返回<类名:内存地址>
        NSLog(@"%@",p); //打印对象用%@
        
    }
    return 0;
}
