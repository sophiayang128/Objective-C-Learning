//
//  main.m
//  id
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 万能指针，能操作任何对象，内部已经加了*
        // id相当于NSObject *
        
        id d = [Person new];
        [d setAge:10];
        Person *p = [Person new];
        p.age=10;
        
        NSLog(@"%d",[p age]);
        
        
    }
    return 0;
}
