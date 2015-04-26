//
//  Student.m
//  01-类的本质
//
//  Created by Sophia Tang on 15/4/26.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Student.h"

@implementation Student

//在类被加载时调用
+ (void)load
{
    NSLog(@"Student----load");
}

+ (void)initialize
{
    //监听初始化过程
    NSLog(@"Student--initial");
}


@end
