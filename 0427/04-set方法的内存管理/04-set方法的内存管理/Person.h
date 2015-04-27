//
//  Person.h
//  04-set方法的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Person : NSObject
{
    Car *_car;
    int _age;
}
- (void)setCar:(Car *)car;
- (Car *)car;

- (void)setAge:(int)age;
- (int)age;

@end
