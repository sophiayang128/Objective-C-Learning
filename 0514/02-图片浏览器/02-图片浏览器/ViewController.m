//
//  ViewController.m
//  02-图片浏览器
//
//  Created by Sophia Tang on 15/5/14.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *_allDescs;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //通过解析plist文件来解析数组对象，比如传入文件的全路径
    
    //如果要访问项目中资源包里面的所有资源，应该用mainBundle
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"descs" ofType:@"plist"];
    
    //加载path对应的文件夹来创建数组，IO操作，很耗性能，应当抽取出来调用一次
    _allDescs = [NSArray arrayWithContentsOfFile:path];
    
    //默认描述
    _imageDesc.text = _allDescs[0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChange:(UISlider *)sender
{
    
    //1.设置中间图片
    NSString *imageName = [NSString stringWithFormat:@"%.f.jpg",sender.value];
    _imageView.image = [UIImage imageNamed:imageName];
    
    //2.设置图片序号
    NSString *imageNo = [NSString stringWithFormat:@"%.f/16",sender.value+1];
    _imageNumber.text = imageNo;
    
    //3.设置图片描述
    
    _imageDesc.text = _allDescs[(int)(sender.value+0.5)];
    
}
@end
