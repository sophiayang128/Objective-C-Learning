//
//  ViewController.m
//  01-UIView常见属性和方法
//
//  Created by Sophia Tang on 15/5/4.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)btnClick:(UIButton *)btn
{
    
    NSLog(@"%d个子控件",self.view.subviews.count);
    if(btn.tag == 10)
    {
        NSLog(@"点击了上面的按钮");
    }
    else if(btn.tag == 20)
    {
        NSLog(@"点击了下面的按钮");
    }
}

@end
