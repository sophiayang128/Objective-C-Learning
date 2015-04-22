//
//  Person.m
//  01-构造方法
//
//  Created by Sophia Tang on 15/4/22.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@implementation Person

//重写-init方法，调用Person的init方法，就会优先调用该重写的方法
- (id)init  //返回的类型不确定
{
    
    /*
     重写构造方法的条件：
     1.一定要调用会super得init方法：初始化父类中声明的成员变量和属性
     2.如果对象初始化成功，才有必要进行接下来的初始化
     3.返回一个已经初始化完毕的对象
     */

    //self = [super init];   //返回当前对象,super内部也有成员变量需要初始化
    
    if (self = [super init])
    {
        //初始化成功
        _age = 10; //每个对象创建完都有初始化值为10
    }
    return self;
    
}

@end
