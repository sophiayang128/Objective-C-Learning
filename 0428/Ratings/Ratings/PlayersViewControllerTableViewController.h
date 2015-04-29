//
//  PlayersViewControllerTableViewController.h
//  Ratings
//
//  Created by Sophia Tang on 15/4/29.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewControllerTableViewController : UITableViewController <PlayerDetailsViewControllerDelegate>


@property (nonatomic,strong) NSMutableArray *players;

@end
