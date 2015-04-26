//
//  Person.m
//  01-类的本质
//
//  Created by Sophia Tang on 15/4/26.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (void)test
{
    NSLog(@"调用了test方法");
}

//当程序启动的时候，就会加载一次项目中所有的类
//类加载完毕后，就会调用+load方法
+ (void)load
{
    NSLog(@"Person----load");
}

//当第一次使用这个类的时候就会调用一次initialize方法
+ (void)initialize
{
    NSLog(@"Person--initial");
}

@end
