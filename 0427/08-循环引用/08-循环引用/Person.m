//
//  Person.m
//  08-循环引用
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"
#import "Card.h"

@implementation Person

- (void)dealloc
{
    [_card release];
    [super release];
}
@end
