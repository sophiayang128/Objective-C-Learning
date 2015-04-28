//
//  main.m
//  08-循环引用
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

/*
 1.@class的作用：声明一个类，仅仅告诉编译器某个名称是一个类，提高性能
 2.开发中引用一个类的规范：
 1> 在.h文件中用@class来声明类
 2> 在.m文件中用#import来包含类的所有东西
 
 3. 两端循环引用的解决方案
 1> 一端用retain
 2> 一端用assgin
 
 */

/*
 @class和#import的区别：
 1. #import会包含被引用类的所有信息，包括被引用类的变量和方法
    @class只是告诉编译器在A.h文件中 B *b只是类的声明，具体这个类有什么信息不需要知道，等实现文件中真正要调用时，才会去查看
 2. 如果上百个头文件都#import了同一个文件，那么一旦最开始头文件少有改动，后面引用到这个文件的素有类都需要重新编译一遍，效率降低，使用@class不会出现这个问题
 3. 在.m实现文件中，如果需要引用到被引用类的实体变量或方法时，还需要使用#import来引入被引用类
 */

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Card.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        
        Card *c = [[Card alloc] init];
        
        p.card = c;
        c.person = p;
        
        [c release];
        
        [p release];
        
    }
    return 0;
}
