//
//  main.m
//  第一个OC项目
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main()
{
    NSLog(@"hello OC!");
    
    Student *stu = [Student new];
    [stu setAge:10];
    
    NSLog(@"小明的年龄是%d岁",[stu age]);
    
    
    
    return 0;
}
