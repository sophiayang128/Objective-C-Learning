//
//  ViewController.m
//  表情排列
//
//  Created by Sophia Tang on 15/5/20.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "ViewController.h"

#define kImagWH 45
@interface ViewController ()
- (void)addImage:(NSString *)icon x:(CGFloat)x y:(CGFloat)y;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    int columns = 2; //每行3列
    CGFloat margin = (self.view.frame.size.width - columns * kImagWH)/(columns + 1);
    //NSLog(@"%d",(int)margin);
    
    //第一个表情y值
    CGFloat oneY = 100;
    //第一个表情x值
    CGFloat oneX = margin;
    
    
    //1.创建表情
    for (int i=0; i<9; i++)
    {
        NSString *imageName = [NSString stringWithFormat:@"01%d.png",i];
        
        int col = i % columns;
        int row = i / columns;
        
        CGFloat x = oneX + col * (kImagWH + margin);
        CGFloat y = oneY + row * (kImagWH + margin);
        
        [self addImage:imageName x:x y:y];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)indexChange:(UISegmentedControl *)sender
{
    int columns = sender.selectedSegmentIndex + 2;
    //NSLog(@"%d",columns);
    
    CGFloat margin = (self.view.frame.size.width - columns * kImagWH)/(columns + 1);
    //NSLog(@"%d",(int)margin);
    
    //第一个表情y值
    CGFloat oneY = 100;
    //第一个表情x值
    CGFloat oneX = margin;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.6];
    
    //1.创建表情
    for (int i=0; i<9; i++)
    {
//        NSString *imageName = [NSString stringWithFormat:@"01%d.png",i];
        
        int col = i % columns;
        int row = i / columns;
        
        CGFloat x = oneX + col * (kImagWH + margin);
        //NSLog(@"%d",(int)x);
        CGFloat y = oneY + row * (kImagWH + margin);
        
        //第0个是selectedSegementIndex
        UIView *child = self.view.subviews[i+3];
        NSLog(@"%@",child.class);
        
        CGRect tempFrame = child.frame;
        
        //修改x和y的值
        tempFrame.origin = CGPointMake(x, y);
        
        child.frame = tempFrame;
        
    }
    [UIView commitAnimations];

    
}

- (void)addImage:(NSString *)icon x:(CGFloat)x y:(CGFloat)y
{
    UIImageView *pic = [[UIImageView alloc] init];
    pic.image = [UIImage imageNamed:icon];
    pic.frame = CGRectMake(x, y, kImagWH, kImagWH);
    [self.view addSubview:pic];
    
}
@end
