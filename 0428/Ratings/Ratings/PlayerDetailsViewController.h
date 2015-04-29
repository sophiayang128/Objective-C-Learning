//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Sophia Tang on 15/4/29.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PlayerDetailsViewController;
@class Player;


@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)PlayerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)PlayerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;

@end


@interface PlayerDetailsViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (nonatomic,weak) id <PlayerDetailsViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end
