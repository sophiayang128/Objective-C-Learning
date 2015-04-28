//
//  Card.m
//  08-循环引用
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Card.h"
#import "Person.h"

@implementation Card
- (void)dealloc
{
    NSLog(@"Card被回收了");
    //[_person release]; 用了assgin这里就不用release
    [super dealloc];
}

@end
