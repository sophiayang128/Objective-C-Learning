//
//  Status.m
//  07-模型设计练习
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Status.h"

@implementation Status
- (void)dealloc
{
    [_text release];
    [_user release];
    [_retweetStatus release];
    [_pic release];
    
    [super dealloc];
}

@end
