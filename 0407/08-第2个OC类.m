
/*
 Person
 属性：体重,年龄
 行为：walk，eat
 */

#import <Foundation/Foundation.h>
@interface Person : NSObject
{
    @public
    int weight;
    int age;
}

- (void) walk;
- (void) eat;

@end

@implementation Person

- (void) walk{
    NSLog(@"%d岁，%d斤的人正在走路.",age,weight);
}

- (void) eat{
    NSLog(@"%d岁，%d斤的人正在狂吃。",age,weight);
}

@end


int main(){
    
    //在使用类创建对象之前，是会讲类加载到内存中的
    Person *p = [Person new];
    p->weight = 100;
    p->age = 20;
    [p walk];
    [p eat];
    
    Person *p2 = [Person new];
    p2->weight = 120;
    p2->age = 30;
    [p2 walk];
    [p2 eat];
    
    
    
    
    
    
    //NSLog(@"我的体重是%dg，我今年%d岁。",p->weight,p->age);
    
    
    return 0;
}