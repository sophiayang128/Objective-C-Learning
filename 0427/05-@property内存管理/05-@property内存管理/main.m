//
//  main.m
//  05-@property内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Book.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Book *b = [[Book alloc] init];
        Person *p = [[Person alloc] init];
        p.book = b;
        
        NSLog(@"%ld",[b retainCount]);
        
        [p release];
        [b release];
    }
    return 0;
}
