//
//  Person.m
//  01-SEL
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

//每个方法在内存中都有一个SEL类型的数据与其对应
+ (void)test
{
    NSLog(@"test-----");
}

- (void)test2
{
    //_cmd代表当前方法
    NSString *str = NSStringFromSelector(_cmd);
    NSLog(@"test2-----%@",str);
}

- (void)test3:(NSString *)abc
{
    NSLog(@"test3-----%@",abc);
}

@end
