//
//  Person.m
//  第一个OC项目
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(int)age
{
    _age = age;
}

- (int)age
{
    return _age;
}

+ (void)test
{
    NSLog(@"test");
}
@end
