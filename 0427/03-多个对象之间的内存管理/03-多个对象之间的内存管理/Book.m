//
//  Book.m
//  03-多个对象之间的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Book.h"

@implementation Book

- (void)setPrice:(int)price
{
    _price = price;
}

- (int)price
{
    return _price;
}

- (void)dealloc
{
    NSLog(@"Book对象被回收了");
    [super dealloc];
}
@end
