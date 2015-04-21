//
//  Person.m
//  @property和@synthesis
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person
//synthesize自动生成成员变量的setter和getter方法实现
@synthesize age = _age;
@synthesize height = _height;
@synthesize weight = _weight;
@synthesize name = _name;

- (void)test
{
    NSLog(@"age=%d",_age);
}

@end
