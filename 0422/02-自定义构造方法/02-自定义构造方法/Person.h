//
//  Person.h
//  02-自定义构造方法
//
//  Created by Sophia Tang on 15/4/23.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property int age;

/*自定义构造方法
 1.一定是对象方法
 2.返回值一般是id类型
 3.方法名一般以initWith开头
*/
- (id)initWithName:(NSString *)name;
- (id)initWithAge:(int)age;
- (id)initWithName:(NSString *)name andAge:(int)age;

@end
