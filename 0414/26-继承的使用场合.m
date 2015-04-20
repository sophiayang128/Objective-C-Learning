/*
 继承使用场合：
 1.当两个类拥有相同属性和方法的时候，就可以将相同的东西抽取到一个父类中
 2.当A类完全拥有B类中部分属性和方法时，可以考虑让B类继承A类，不一定用继承，可以用组合
 */

#import <Foundation/Foundation.h>
@interface Score : NSObject
{
    int _cScore;
    int _ocScore;
}

@end

@implementation Score


@end

//继承：XX是XXX
//组合：XX拥有XXX

@interface Student: NSObject  //不可以继承Score这个类
{
    //组合
    Score *_score;
//    int _cScore;
//    int _ocScore;
    int _age;
}

@end

@implementation Student


@end

int main()
{
    return 0;
}