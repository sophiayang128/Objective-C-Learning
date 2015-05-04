//
//  ViewController.m
//  01-第一个iOS程序
//
//  Created by Sophia Tang on 15/5/3.
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

#pragma mark 监听按钮点击
- (void)btnClick
{
    NSString *text1 = self.num1.text;
    NSString *text2 = self.num2.text;
    
    int i1 = [text1 intValue];
    int i2 = [text2 intValue];
    
    
    
    self.result.text = [NSString stringWithFormat:@"%d",i1+i2];
}

@end
