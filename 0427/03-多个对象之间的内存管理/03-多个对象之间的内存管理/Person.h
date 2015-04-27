//
//  Person.h
//  03-多个对象之间的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Person : NSObject
{
    Book *_book;
    
}
- (void)setBook:(Book *)book;
- (Book *)book;

@end
