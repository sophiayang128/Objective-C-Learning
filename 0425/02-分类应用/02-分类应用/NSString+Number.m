//
//  NSString+Number.m
//  02-分类应用
//
//  Created by Sophia Tang on 15/4/25.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "NSString+Number.h"

@implementation NSString (Number)

+ (int)numberCountOfString:(NSString *)str
{
    int number = 0;
    for (int i=0; i<str.length; i++) {
        
        char a = [str characterAtIndex:i];  //NSUInteger: unsigned long
        if (a>47 && a<59) {
            number++;
        }
    
    }
    return number;
}

@end
