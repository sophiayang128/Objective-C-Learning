//
//  Person.h
//  01-Category
//
//  Created by Sophia Tang on 15/4/24.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
}
@property int age;  //自动生成名为_age的私人成员变量？

-(void)test;

@end
