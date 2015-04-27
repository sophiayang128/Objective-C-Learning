//
//  Car.m
//  04-set方法的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Car.h"

@implementation Car
- (void)setSpeed:(int)speed
{
    _speed = speed;
}

- (int)speed
{
    return _speed;
}

- (void)dealloc
{
    /*
     _speed：直接访问成员变量
     self->_speed：直接访问成员变量
     self.speed：get方法
     [self speed]：get方法
     */
    NSLog(@"速度为%d的Car对象被回收了",_speed);
    [super dealloc];
}

@end
