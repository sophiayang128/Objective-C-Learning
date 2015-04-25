//
//  Person+Sophia.m
//  01-Category
//
//  Created by Sophia Tang on 15/4/24.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person+Sophia.h"

@implementation Person (Sophia)

- (void)study
{
    NSLog(@"study--------%d",_age);
}

- (void)test //分类优先级高，会覆盖原来方法
{
    NSLog(@"PersonSophia---test");
}
@end
