//
//  ViewController.h
//  02-图片浏览器
//
//  Created by Sophia Tang on 15/5/14.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)sliderValueChange:(UISlider *)sender;
- (IBAction)setting;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *imageNumber;

@property (weak, nonatomic) IBOutlet UILabel *imageDesc;

@property (weak, nonatomic) IBOutlet UIView *settingView;

@end

