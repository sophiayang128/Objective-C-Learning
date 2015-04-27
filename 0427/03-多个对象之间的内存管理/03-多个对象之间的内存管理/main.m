//
//  main.m
//  03-多个对象之间的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

/*
 1. 你想使用某个对象，就应该让对象计数器+1（retain）
 2. 你不想再使用某个对象时，就应该让对象计数器-1（release）
 3. 谁retain，谁release
 4. 谁alloc，谁release
 */

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Book *b = [[Book alloc] init];
        Person *p1 = [[Person alloc] init];
        
        //p1想占用b这本书
        [p1 setBook:b];
        
        [b release];
        b = nil;
        
        [p1 release];
        p1 = nil;
        
    }
    return 0;
}
