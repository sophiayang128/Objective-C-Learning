//
//  Car.h
//  04-set方法的内存管理
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    int _speed;
}

- (void)setSpeed:(int)speed;
- (int)speed;
@end
