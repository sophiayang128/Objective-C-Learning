//
//  Person.m
//  02-引用计数器的基本操作
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

//当一个Person对象被回收的时候，系统会自动调用这个方法
- (void)dealloc
{
    NSLog(@"Person对象被回收了");
    
    
    
    
    //[super dealloc]一定要调用，而且放在最后面
    [super dealloc];
    
}

@end
