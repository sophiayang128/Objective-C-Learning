//
//  Person.h
//  第一个OC项目
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
}

- (void)setAge:(int)age;
- (int)age;

+ (void)test;
@end
