//
//  Person.m
//  03-多个对象之间的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)setBook:(Book *)book
{
    _book = [book retain];
    
}

- (Book *)book
{
    return _book;
}

- (void)dealloc
{
    [_book release];
    NSLog(@"Person对象被回收了");
    [super dealloc];
}

@end
