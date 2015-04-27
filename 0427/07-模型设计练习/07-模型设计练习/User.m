//
//  User.m
//  07-模型设计练习
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//


#import "User.h"

@implementation User

- (void)dealloc
{
    [_name release];
    [_account release];
    [_password release];
    [_icon release];
    [_phone release];
    
    [super dealloc];
}

@end
