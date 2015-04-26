//
//  main.m
//  02-分类应用
//
//  Created by Sophia Tang on 15/4/25.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Number.h"

/*
  给NSString增加一个类方法：计算某个字符串中阿拉伯数字的个数
  给NSString增加一个对象方法：计算当前字符串中阿拉伯数字的个数
 
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *s = @"ab3cdfg12345";
//        int count = [NSString numberCountOfString:s];
//        
//        NSLog(@"%d",count);
        int count = [@"123abc3nd" numberCount];
        NSLog(@"%d",count);
        
    }
    return 0;
}
