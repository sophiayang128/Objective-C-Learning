//
//  Student.m
//  05-@property内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)dealloc
{
    [_book release];
    [_name release];
    [super dealloc];
}

@end
