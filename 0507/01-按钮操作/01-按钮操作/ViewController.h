//
//  ViewController.h
//  01-按钮操作
//
//  Created by Sophia Tang on 15/5/7.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn;

- (IBAction)run:(id)sender;

- (IBAction)rotate:(id)sender;

- (IBAction)zoom:(id)sender;

- (IBAction)reset:(id)sender;

@end

