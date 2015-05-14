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

- (void)btnClickWithBlock:(void (^)())block
{
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.8];
    
    block();
    
    [UIView commitAnimations];
}


#pragma mark 控制按钮走动（上下左右）
//id类不能用点语法
- (IBAction)run:(id)sender
{
    //OC语法规定：不允许直接修改某个对象结构体属性的成员
    
    [self btnClickWithBlock:^{
        
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

        
    }];

}


#pragma mark 左旋转、右旋转
- (IBAction)rotate:(id)sender
{
    [self btnClickWithBlock:^{
        CGFloat angel = [sender tag] == 5 ? -M_PI_4 : M_PI_4;
        _btn.transform = CGAffineTransformRotate(_btn.transform, angel);

    }];
    
    
    
    //弧度制 这里用的是radius
    //角度制
    //向左旋转45度
    //形变属性不会在以前基础上再转45
//    int tag = [sender tag];
//    switch (tag) {
//        case 5:
//            _btn.transform = CGAffineTransformMakeRotation(-M_PI_4);
//            _btn.transform = CGAffineTransformRotate(_btn.transform, -M_PI_4);
//            break;
//            
//        case 6:
//            _btn.transform = CGAffineTransformMakeRotation(M_PI_4);
//            _btn.transform = CGAffineTransformRotate(_btn.transform, M_PI_4);
//            break;
//        default:
//            break;
//    }
    
}

#pragma mark 放大、缩小
- (IBAction)zoom:(id)sender
{
    [self btnClickWithBlock:^{
        CGFloat scale = [sender tag] == 7 ? 1.2 : 0.8;
        _btn.transform = CGAffineTransformScale(_btn.transform, scale, scale);

    }];
    
   
//    int tag = [sender tag];
//    switch (tag) {
//        case 7:
//            _btn.transform = CGAffineTransformScale(_btn.transform, 1.2, 1.2);
//            break;
//            
//        case 8:
//            _btn.transform = CGAffineTransformScale(_btn.transform, 0.8, 0.8);
//            break;
//        default:
//            break;
//    }
    
}

#pragma mark 重置按钮
- (IBAction)reset:(id)sender
{
    
    [self btnClickWithBlock:^{
        //清空之前所有形变状态（消除旋转、缩放等状态）
        _btn.transform = CGAffineTransformIdentity;
    }];
    
    
}
@end
