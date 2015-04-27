//
//  Person.h
//  08-循环引用
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

//仅仅是告诉编译器，Card是一个类
@class Card;

@interface Person : NSObject

@property (nonatomic, retain) Card *card;

@end
