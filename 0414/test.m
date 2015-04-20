#import <Foundation/Foundation.h>
@interface Person : NSObject
{
    @public
    int _age;
}
- (void)run;

@end

@implementation Person

- (void) run{
    NSLog(@"%d岁的人 is running",_age);
}

@end

int main(){
    Person *p=[Person new];
    p->_age=10;
    
    [p run];
    
    return 0;
}