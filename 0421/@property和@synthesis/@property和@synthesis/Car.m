//
//  Car.m
//  @property和@synthesis
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Car.h"

@implementation Car


//synthesize访问的变量如果不存在成员变量，会自动生成@private成变量
@synthesize speed = _speed;
@synthesize wheels = _wheels;

@end
