//
//  main.m
//  02-自定义构造方法
//
//  Created by Sophia Tang on 15/4/23.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] initWithName:@"ROSE"];
        Person *p1 = [[Person alloc] initWithAge:20];
        Person *p2 = [[Person alloc] initWithName:@"TOM" andAge:25];
        Student *stu = [[Student alloc] initWithNo:1];
        Student *stu1 = [[Student alloc] initWithName:@"LILY" andAge:18 andNo:9];
        
        NSLog(@"%@",p.name);
        NSLog(@"%d",p1.age);
        NSLog(@"The third person is %@, and he is %d years old.",p2.name,p2.age);
        NSLog(@"The second student is %@, and she is %d years old, and her student number is %d.",stu1.name,stu1.age,stu1.no);
        
    }
    return 0;
}
