//
//  main.m
//  第二个OC项目
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setAge:10];
        
        int a = [p age];
        NSLog(@"年龄是%d",a);
        
        
    }
    return 0;
}
