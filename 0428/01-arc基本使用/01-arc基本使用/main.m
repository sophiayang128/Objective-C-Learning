//
//  main.m
//  01-arc基本使用
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

/*
 ARC判断准则：只要没有强指针指向对象，就会释放对象
 
 1. ARC特点总结
 1> 不允许调用retain,release,retainCount
 2> 允许重写dealloc方法，但是不允许调用[super dealloc]
 3> @property的参数
   strong: 相当于原来的retain（适用于OC对象）
   weak: 相当于原来的assign（适用于OC对象）
   assign: 适用于非OC对象类型
 4> 以前的retain改为用strong
 
 指针分2种：
 1> 强指针：默认情况下，所有的指针都是强指针 __strong
 2> 弱指针
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dog *d = [[Dog alloc] init];
        
        Dog *d2 = [[Dog alloc] init];
        
        Person *p = [[Person alloc] init];
        
        p.dog = d;
        p.dog = d2;
        
    }
    return 0;
}

void test()
{
    Person *p = [[Person alloc] init]; //强指针p
    
    __weak Person *p2 = p; //弱指针p2
    
    p = nil; //对象被回收后，弱指针也跟着清空
    
    p2 = nil;
    
    NSLog(@"---");
}
