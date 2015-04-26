//
//  main.m
//  01-类的本质
//
//  Created by Sophia Tang on 15/4/26.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "GoodStudent.h"

/*
 1. 当程序启动时，就会加载项目中所有的类和分类，而且加载后会调用每个类和分类+load方法，只会调用一次
 2. 当第一次使用某个类时，就会调用类的+initialize方法
 3. 先加载类，再加载子类
    先初始化父类，再初始化子类
 */



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //[[Student alloc] init];
        [[Person alloc] init];
        //[[GoodStudent alloc] init];
        
        
        //利用Person类创建两个Person类型的对象
        [Person test];
        Person *p = [[Person alloc] init];
        
        Person *p2 = [[Person alloc] init];
        
        Person *p3 = [[Person alloc] init];
        
        
        
        //获取内存中的类对象
        //类对象==类
        Class c = [p class];
        
        [c test];
        
        Person *p4 = [[c new] init];
        Class c2 = [p class];
        
        //获取内存中类对象的方法2
        Class c3 = [Person class];
        
        NSLog(@"c=%p,c2=%p,c3=%p",c,c2,c3);   //打印地址
        
        //类本身也是对象，是个Class类型的对象（类对象）
        
        /*
         1.Class创建Person类对象
         2.利用Person类对象创建Person类型的对象
         
         */
     }
    return 0;
}
