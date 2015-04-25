//
//  main.m
//  01-Category
//
//  Created by Sophia Tang on 15/4/24.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

/*
 分类的作用：在不改变原来类内容的基础上，可以为类增加一些方法
 
 使用注意：
 1.分类只能增加方法，不能增加成员变量
 2.分类方法实现中可以访问类中声明的成员变量
 3.分类可以重新实现原来类中的方法，但是会覆盖掉原来的方法，会导致原来的方法没法再使用
 4。方法调用的优先级：分类（最后参与编译的分类优先）-->原来类-->父类
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Sophia.h"
#import "Person+Sophia2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        [p test];
        
        
        //[p setAge:10];
        p.age=10;
        
        [p study];
        
        [p test2];
        
        
        
        
        
    }
    return 0;
}
