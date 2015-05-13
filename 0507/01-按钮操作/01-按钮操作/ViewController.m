//
//  ViewController.m
//  01-按钮操作
//
//  Created by Sophia Tang on 15/5/7.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "ViewController.h"

#define kDelta 50;

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



//id类不能用点语法
- (IBAction)run:(id)sender
{
    //OC语法规定：不允许直接修改某个对象结构体属性的成员
    
    //0.动画（头部-开始动画）
    [UIView beginAnimations:nil context:nil];
    //设置动画执行时间
    [UIView setAnimationDuration:1.0];
    
    //1.先取出frame
    CGRect tempFrame = _btn.frame;
    
    //2.去除tag标记
    int tag= [sender tag];
//    CGFloat delta = 20;
    switch (tag) {
        case 1: //上
            tempFrame.origin.y -= kDelta;
            break;
            
        case 2:  //右
            tempFrame.origin.x += kDelta;
            break;
            
        case 3:  //下
            tempFrame.origin.y += kDelta;
            break;
            
        case 4:  //左
            tempFrame.origin.x -= kDelta;
            break;
        default:
            break;
    }
   
    
    //3.重新赋值按钮的frame
    _btn.frame = tempFrame;
    
    //4.动画（尾部-提交动画-执行动画）
    [UIView commitAnimations];
}
@end
