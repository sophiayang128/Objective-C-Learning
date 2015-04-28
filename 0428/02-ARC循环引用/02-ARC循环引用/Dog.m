//
//  Dog.m
//  02-ARC循环引用
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)dealloc
{
    NSLog(@"Dog被回收了");
}

@end
