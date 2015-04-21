//
//  Person.h
//  第二个OC项目
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    NSString *_name;
}

//年龄的getter和setter
- (void)setAge:(int)age;
- (int)age;

//姓名的getter和setter
- (void)setName:(NSString *)name;
- (NSString *)name;



@end
