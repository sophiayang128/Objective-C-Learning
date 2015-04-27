//
//  Person.h
//  06-@property参数
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

/*
 1. 内存管理相关的参数
   retain:release旧值 retain新值（适用于OC对象类型）
   assign:直接赋值（默认，适用于非OC对象类型）
   copy:release旧值，copy新值
 
 2. 是否要生成set方法(只读方法)
   默认readwrite
   通过readonly来只生成getter声明和实现
 
 3. 多线程管理
   nonatomic:不要加多线程，性能高(一般用这个)
   atomic:性能低（默认）
 
 4. setter和getter方法的名称（一般用在BOOL类型的get方法）
   @property (getter = abc, setter = def:) int height; //setter一定要有冒号
 
 
 */

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,readwrite,assign) int age;

@property (nonatomic,retain) NSString *name;

@property (nonatomic,readonly) int height;

@property (getter=isRich) BOOL rich;  //方法的返回值是布尔类型时最好将get方法名改写为is开头

@end
