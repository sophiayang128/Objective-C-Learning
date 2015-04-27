//
//  main.m
//  07-模型设计练习
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Status.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        User *u = [[User alloc] init];
        u.name = @"JACK";
        
        User *u2 = [[User alloc] init];
        u2.name = @"TOM";
        
        
        Status *s = [[Status alloc] init];
        s.text = @"Good Day today!";
        s.user = u;
        
        Status *s2 = [[Status alloc] init];
        s2.text = @"Really good day!";
        s2.retweetStatus = s;
        s2.user = u2;
        
        
        
        
        [u2 release];
        [u release];
        [s2 release];
        [s release];
        
        
    }
    return 0;
}
