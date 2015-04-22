//
//  Student.m
//  01-构造方法
//
//  Created by Sophia Tang on 15/4/22.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Student.h"

@implementation Student

//学生对象初始化完毕后，年龄就是10，学号就是1

- (id)init
{
    if (self = [super init])    //调用到Person的init方法中去了
    {
        //没有权利对于_age进行赋值，因为父类中调用了property生成的_age成员变量默认为@private
        _no = 1;
    }
    return self;
}

@end
