//
//  AppDelegate.m
//  SmartBookCase
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "AppDelegate.h"
#import "SmartRootViewController.h"



@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[SmartRootViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
