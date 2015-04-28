//
//  main.m
//  02-ARC循环引用
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//


/*
 当两端循环引用时：
 1>ARC
 1.一端用strong
 2.一端用weak
 
 2>非ARC
 1.一端用retain
 2.另一端用assign
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        Dog *d = [[Dog alloc] init];
        
        p.dog = d;
        d.person = p;
        
            }
    return 0;
}
