//
//  ViewController.h
//  01-第一个iOS程序
//
//  Created by Sophia Tang on 15/5/3.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//声明两个属性来保存两个文本输入框
@property (nonatomic,weak) IBOutlet UITextField *num1;
@property (nonatomic,weak) IBOutlet UITextField *num2;

@property (nonatomic,weak) IBOutlet UILabel *result;

//声明一个方法来监听按钮点击
- (IBAction)btnClick;
@end

