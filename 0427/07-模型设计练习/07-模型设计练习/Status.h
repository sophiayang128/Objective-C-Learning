//
//  Status.h
//  07-模型设计练习
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

//微博类：微博内容、微博配图、发送时间、微博发送人、转发的微博、被评论数、被转发数

#import <Foundation/Foundation.h>
#import "User.h"


@interface Status : NSObject

@property (nonatomic,retain) NSString *text;

@property (nonatomic,retain) NSString *pic;

//long-->从1970-1-1 00:00:00开始一共度过了多少ms

@property (nonatomic,assign) time_t time; //其实也是long

@property (nonatomic,retain) User *user;

@property (nonatomic,retain) Status *retweetStatus;

@property (nonatomic,assign) int commentsCount;

@property (nonatomic,assign) int retweetsCount;





@end
