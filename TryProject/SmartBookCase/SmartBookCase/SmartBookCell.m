//
//  SmartBookCell.m
//  SmartBookCase
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import "SmartBookCell.h"

@implementation SmartBookCell
@synthesize smartlabel;
@synthesize smartimage;

//用于在cell中创建一个新的区域
- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        //创建smartimage并对其初始化，用图片BookShelfCell.png作为加载图片
        self.smartimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"BookShelfCell.png"]];
        
        //设置边框大小
        smartimage.frame = CGRectMake(0, 0, 770, 320);
        
        //构建填充区大小
        self.smartlabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 770, 320)];
        
        //设置背景颜色
        smartlabel.backgroundColor = [UIColor clearColor];
        
        //把smartImage填充到填充区域
        [smartlabel addSubview:smartimage];
        
        //把smartLabel添加到视图中
        [self addSubview:smartlabel];
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}






@end
