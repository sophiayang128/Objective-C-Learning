//
//  Person.h
//  04-protocol
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocol.h"

//只要一个类遵守了谋一份协议，就能有这份协议中所有的方法声明
//: 继承父类
//<> 遵守协议
@interface Person : NSObject <MyProtocol>

@end
