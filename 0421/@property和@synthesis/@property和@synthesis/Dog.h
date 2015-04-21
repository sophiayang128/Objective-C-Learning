//
//  Dog.h
//  @property和@synthesis
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
// 缺点在于这个变量是私有的，子类无法访问
/*
 {
     int _age;  这个变量默认是@protected，子类可以访问
 }
 */
@property int age;
@end
