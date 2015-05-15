//
//  ViewController.m
//  01-代码创建按钮
//
//  Created by Sophia Tang on 15/5/14.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end



@implementation ViewController

#pragma mark 控制器的view加载完毕时会调用一次
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.创建按钮
    //1.1 创建
    UIButton *btn = [[UIButton alloc]init];
    
    //1.2 设置尺寸位置
    btn.frame = CGRectMake(130, 100, 120, 110);
    
    //1.3 设置按钮普通状态下的属性
    //1.3.1 设置背景图片
    UIImage *normal = [UIImage imageNamed:@"btn_01.png"];
    [btn setBackgroundImage:normal forState:UIControlStateNormal];
    
    //1.3.2 设置文字
    [btn setTitle:@"点我啊" forState:UIControlStateNormal];
    
    //1.3.3 设置文字颜色
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
    
    //1.4 设置按钮高亮状态下的属性
    
    UIImage *highlighted = [UIImage imageNamed:@"btn_02.png"];
    [btn setBackgroundImage:highlighted forState:UIControlStateHighlighted];
    
    [btn setTitle:@"快松开我！！" forState:UIControlStateHighlighted];
    
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    //1.5 监听按钮点击
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    //2.添加按钮到控制器的view上
    [self.view addSubview:btn];
    
    
}

#pragma mark 监听按钮点击
- (void)btnClick
{
    //3.添加文本输入框
    UITextField *text = [[UITextField alloc]init];

    text.frame = CGRectMake(140, 300, 100, 50);
    
    
//    text.center = self.view.center;
    
    text.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:text];
    
}

#pragma mark 内存警告：在内回收资源
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
