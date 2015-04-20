/*
 成绩类：
   属性：C语言成绩（可读可写），OC成绩（可读可写），总分（只读），平均分（只读）
 */
#import <Foundation/Foundation.h>
@interface Score : NSObject
{
    int _cSore;
    int _ocScore;
    
    int _totalScore;
    int _averageScore;
}

- (void)setCScore:(int)cScore;
- (int)cScore;

- (void)setOcScore:(int)ocScore;
- (int)ocScore;

- (int)totalScore;

- (int)averageScore;

@end

@implementation Score

- (void)setCScore:(int)cScore
{
    _cSore=cScore;
    //计算总分,监听成员变量的改变
    _totalScore=_cSore+_ocScore;
    _averageScore=_totalScore/2;
}
- (int)cScore
{
    return _cSore;
}

- (void)setOcScore:(int)ocScore
{
    _ocScore=ocScore;
    _totalScore=_cSore+_ocScore;
    _averageScore=_totalScore/2;
}
- (int)ocScore
{
    return _ocScore;
}

- (int)totalScore
{
    return _totalScore;
}

- (int)averageScore
{
    return _averageScore;
}


@end

int main()
{
    Score *s=[Score new];
    [s setCScore:90];
    [s setOcScore:100];
    
    [s setCScore:80];
    
    int a=[s totalScore];
    int b=[s averageScore];
    
    NSLog(@"总分为%d分",a);
    NSLog(@"平均分为%d分",b);
    
    
    return 0;
}