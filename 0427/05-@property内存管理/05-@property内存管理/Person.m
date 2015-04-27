//
//  Person.m
//  05-@property内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

//-(void)setBook:(Book *)book
//{
//    if (book != _book)
//    {
//        [_book release];
//        _book = [book retain];
//    }
//}

- (void)dealloc
{
    [_book release];
    [_name release];
    [super dealloc];
}

@end
