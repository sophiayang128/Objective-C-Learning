//
//  Person.m
//  02-description方法
//
//  Created by Sophia Tang on 15/4/26.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

-(NSString *)description
{
    return [NSString stringWithFormat:@"age=%d,name=%@",_age,_name];
    
}

@end
