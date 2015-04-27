//
//  Person.m
//  04-set方法的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setCar:(Car *)car
{
    if (car != _car)
    {
        //对当前正在使用的车（旧车）做一次release
        [_car release];
        
        //对新车做一次retain操作
        _car = [car retain];
    }    
    
}

- (Car *)car
{
    return _car;
}

//基本数据类型不需要内存管理
- (void)setAge:(int)age
{
    _age = age;
}

- (int)age
{
    return _age;
}

- (void)dealloc
{
    [_car release];
    NSLog(@"%d岁的Person对象被回收了",_age);
    [super dealloc];
}

@end
