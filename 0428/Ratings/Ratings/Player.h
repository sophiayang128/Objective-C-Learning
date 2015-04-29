//
//  Player.h
//  Ratings
//
//  Created by Sophia Tang on 15/4/29.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *game;
@property (nonatomic,assign) int rating;  //游戏评级（1~5星）



@end
