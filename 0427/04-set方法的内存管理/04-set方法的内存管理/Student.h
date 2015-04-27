//
//  Student.h
//  04-set方法的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Dog.h"

@interface Student : NSObject
{
    int _no;
    NSString *_name;
    Car *_car;
    Dog *_dog;
}

- (void)setNo:(int)no;
- (int)no;

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setCar:(Car *)car;
- (Car *)car;

- (void)setDog:(Dog *)dog;
- (Dog *)dog;
@end
