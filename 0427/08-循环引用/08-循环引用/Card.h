//
//  Card.h
//  08-循环引用
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Card : NSObject

@property (nonatomic, retain) Person *person;

@end
