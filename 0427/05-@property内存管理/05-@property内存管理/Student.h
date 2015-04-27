//
//  Student.h
//  05-@property内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Student : NSObject

@property (retain) Book *book;
@property (retain) NSString *name;

@end
