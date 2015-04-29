//
//  TableViewCell.h
//  Ratings
//
//  Created by Sophia Tang on 15/4/29.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *nameLabel;
@property (nonatomic,weak) IBOutlet UILabel *gameLabel;
@property (nonatomic,weak) IBOutlet UIImageView *ratingImageView;

@end
