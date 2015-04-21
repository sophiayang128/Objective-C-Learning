//
//  Person.h
//  @property和@synthesis
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    int _height;
    double _weight;
    NSString *_name;
}

//@property自动生成某个成员变量的setter和getter声明
@property int age;
@property int height;
@property double weight;
@property NSString *name;

- (void)test;

@end
