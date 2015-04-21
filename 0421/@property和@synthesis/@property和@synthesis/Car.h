//
//  Car.h
//  @property和@synthesis
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    int _speed;
    int _wheels;
}

@property int speed;
@property int wheels;

@end
