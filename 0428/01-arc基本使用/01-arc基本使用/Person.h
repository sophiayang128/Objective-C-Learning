//
//  Person.h
//  01-arc基本使用
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;

@interface Person : NSObject

@property (nonatomic,strong) Dog *dog; //_dog这个成员变量是强指针

@property (nonatomic,strong) NSString *name;

@property (nonatomic,assign) int age;
@end
