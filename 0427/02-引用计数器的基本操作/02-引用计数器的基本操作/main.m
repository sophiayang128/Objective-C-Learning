//
//  main.m
//  02-引用计数器的基本操作
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

/*
 1> retain 计数器+1，返回对象本身
 2> release 计数器-1，没有返回值
 3> retainCount 获取当前的计数器值
 4> dealloc方法，当一个对象要被回收的时候调用，要调用[super dealloc]，且要放在最后
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //引用计数器默认为1
        Person *p = [[Person alloc] init];
        
        NSUInteger c = [p retainCount];
        NSLog(@"引用计数器的值为：%ld",c);
        
        //计数器变为2
        //retain方法返回对象本身
        //[p retain];
        
        //计数器变为0
        //一旦变为zombie object就不可以再发送任何消息
        [p release];
        
        p = nil; //将指针清空（空指针），避免后面给野指针发送消息
        
        //野指针：指向僵尸对象，即不可用内存
        //EXC_BAD_ACCESS访问一块坏内存，已经不可用的内存
        //OC不存在空指针错误，给空指针发送消息不报错
        
    }
    return 0;
}
