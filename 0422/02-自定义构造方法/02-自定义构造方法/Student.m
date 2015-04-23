//
//  Student.m
//  02-自定义构造方法
//
//  Created by Sophia Tang on 15/4/23.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)initWithNo:(int)no
{
    if (self = [super init])
    {
        _no = no;
    }
    return self;
}

- (id)initWithName:(NSString *)name andAge:(int)age andNo:(int)no
{
    if (self = [super initWithName:name andAge:age]) //Person里声明的name和age，父类的东西去父类初始化
    {
        _no = no;
    }
    return self;
}

/*- (id)initWithName:(NSString *)name andAge:(int)age andNo:(int)no
{
    if (self = [super init])
    {
        _no = no;
        //_name = name;
        self.name = name;
        self.age = age;
        
    }
    return self;
}*/

@end
