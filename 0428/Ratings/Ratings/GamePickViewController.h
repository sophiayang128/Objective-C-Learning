//
//  GamePickViewController.h
//  Ratings
//
//  Created by Sophia Tang on 15/4/29.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GamePickViewController;

@protocol GamePickViewControllerDelegate <NSObject>
- (void)gamePickviewController:(GamePickViewController *)controller didSelectGame:(NSString *)game;
@end


@interface GamePickViewController : UITableViewController

@property (nonatomic,weak) id <GamePickViewControllerDelegate> delegate;
@property (nonatomic,strong) NSString *game;

@end
