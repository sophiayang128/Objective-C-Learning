//
//  User.h
//  07-模型设计练习
//
//  Created by Sophia Tang on 15/4/27.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

//微博用户类：姓名、微博号码、密码、头像、性别、手机、生日

#import <Foundation/Foundation.h>

typedef enum{
    SexMan,
    SexWoman
}Sex;   //gender

typedef struct{
    int year;
    int month;
    int day;
}Date;   //birthday

@interface User : NSObject
@property (nonatomic,retain) NSString *name;

@property (nonatomic,retain) NSString *account;

@property (nonatomic,retain) NSString *password;

//图片：资源路径--> URL
@property (nonatomic,retain) NSString *icon;

@property (nonatomic,assign) Sex sex; //不是OC对象，但是不要省略assign

@property (nonatomic,retain) NSString *phone;

@property (nonatomic,assign) Date birthday;





@end
