//
//  _1_UIView_______Tests.m
//  01-UIView常见属性和方法Tests
//
//  Created by Sophia Tang on 15/5/4.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface _1_UIView_______Tests : XCTestCase

@end

@implementation _1_UIView_______Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
