//
//  Person.m
//  02-description方法
//
//  Created by Sophia Tang on 15/4/26.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

//决定了实例对象的输出结果
-(NSString *)description
{
    return [NSString stringWithFormat:@"age=%d,name=%@",_age,_name];
    
}


//决定了类对象的输出结果
+ (NSString *)description
{
    return @"modified +description";
}

@end
