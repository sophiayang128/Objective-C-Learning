//
//  main.m
//  04-set方法的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

/*
 内存管理代码规范：
 1. 只要调用alloc，必须有release(autorelease)
    如果对象不是通过alloc产生的，就不需要release
 2. set方法的代码规范
    1> 基本数据类型：直接赋值
       _age = age;
    2> OC对象类型
       - (void)setCar:(Car *)car
       {
           //1.先判断是否是新传进来的对象
            if(car != _car)
            {
                //2.对旧对象做一次release
                [_car release];
                //3.对新对象做一次retain
                _car = [car retain];
            }
        }
 
 3. dealloc的代码规范
   1> 一定要调用[super dealloc]，且要放在最后
   2> 对self当前对象所拥有的其它对象进行一次release
     - (void)dealloc
    {
        [_car release];
        [super dealloc];
    }
 */

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Person.h"
#import "Student.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [[Student alloc] init];
        
        Car *c = [[Car alloc] init];
        stu.car = c;
        
        Dog *d = [[Dog alloc] init];
        stu.dog = d;
        
        stu.name = @"JACK"; //相当于自动做了release
        
        [d release];
        [c release];
        [stu release];
        
        
        
        
    }
    return 0;
}

void test()
{
    Person *p = [[Person alloc] init];
    p.age = 20;
    
    Car *c1 = [[Car alloc] init];
    c1.speed = 250;
    
    //p相拥有c1
    p.car = c1;
    
    [c1 release];
    c1 = nil;
    
    Car *c2 = [[Car alloc] init];
    c2.speed = 300;
    
    //p将车换成了c2
    p.car = c2;
    
    [c2 release];
    c2 = nil;
    
    
    
    [p release];
    p = nil;
}
