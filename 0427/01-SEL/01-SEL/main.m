//
//  main.m
//  01-SEL
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

/*
 SEL其实是对方法的一种包装，将方法包装成SEL类型的数据，去找对应方法的地址
 找到方法地址就可以调用方法
 其实消息就是SEL
 */

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        
        //知道一个方法名的字符串形式也可以调用方法
        NSString *name = @"test2";
        SEL s = NSSelectorFromString(name);
        [p performSelector:s];
        
        
        [p performSelector:@selector(test2)]; //通过传入该方法对应的SEL数据来调用方法
        
        [p performSelector:@selector(test3:) withObject:@"123"]; //可以将selector看做一种消息
        
        
        //[p test2];
        
        //1.把test2包装成SEL类型的数据
        //2.根据SEL数据找到对应的方法地址
        //3.根据方法地址调用对应方法
    }
    return 0;
}
