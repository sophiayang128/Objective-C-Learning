//
//  Student.h
//  02-自定义构造方法
//
//  Created by Sophia Tang on 15/4/23.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "Person.h"

@interface Student : Person
@property int no;


- (id)initWithNo:(int)no;

- (id)initWithName:(NSString *)name andAge:(int)age andNo:(int)no;

@end
