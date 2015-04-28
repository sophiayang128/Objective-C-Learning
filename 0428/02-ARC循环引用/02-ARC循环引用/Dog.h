//
//  Dog.h
//  02-ARC循环引用
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Dog : NSObject

@property (nonatomic, weak) Person *person;
@end
