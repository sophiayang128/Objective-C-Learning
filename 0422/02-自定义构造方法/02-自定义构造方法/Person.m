//
//  Person.m
//  02-自定义构造方法
//
//  Created by Sophia Tang on 15/4/23.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)init
{
    if (self = [super init])
    {
        _name = @"JACK";
    }
    return self;
}

- (id)initWithName:(NSString *)name
{
    if (self = [super init])
    {
        _name = name;
        
    }
    return self;
}

-(id)initWithAge:(int)age
{
    if (self = [super init])
    {
        _age = age;
    }
    return self;
}

- (id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init])
    {
        _name = name;
        _age = age;
    }
    return self;
}

@end
