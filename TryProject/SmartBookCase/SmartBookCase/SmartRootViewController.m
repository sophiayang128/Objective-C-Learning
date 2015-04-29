//
//  ViewController.m
//  SmartBookCase
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "SmartRootViewController.h"



@implementation SmartRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *backgroundImage = [UIImage imageNamed:@"BookShelfCell@2x.pgn"];
    UIColor *backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    self.view.backgroundColor = backgroundColor;
    
    //设置导航栏上标题
    self.navigationItem.title = @"Book Shelf";
    
    //创建mainScrollView并设置它的位置和大小
    UIScrollView *mainScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];

    //设置mainScrollView背景色
    mainScrollView.backgroundColor = [UIColor redColor];
    
    //把mainScrollView加载到视图中
    [self.view addSubview:mainScrollView];
    mainScrollView.delegate = self;
    
    //隐藏水平和垂直滚动条
    mainScrollView.showsHorizontalScrollIndicator = NO;
    mainScrollView.showsVerticalScrollIndicator = NO;
    
    //将分页开关打开
    mainScrollView.pagingEnabled = YES;
    
    //静止来回晃动
    mainScrollView.bounces = NO;
    
    //创建第一面柜面，并设置柜面区域大小
    UITableView *SmartTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    
    //指定委派对象为self
    SmartTableView.delegate = self;
    
    //指定资源为self
    SmartTableView.dataSource = self;
    
    //设置柜面背景色
    SmartTableView.backgroundColor = [UIColor grayColor];
    
    //把柜面加载到视图控制器视图中
    [mainScrollView addSubview:SmartTableView];
    
    //设置第一面柜面的tag值为100
    SmartTableView.tag = 100;
    
    
}

//设置书柜层数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

//设置书柜每层高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.view.bounds.size.height/3;
}

//对“层”进行组装
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //创建每行柜面
    SmartBookCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (cell == nil)
    {
        cell = [[SmartBookCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ID"];
    }
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
