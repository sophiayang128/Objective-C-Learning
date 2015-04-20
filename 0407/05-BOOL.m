
#import <Foundation/Foundation.h>

//BOOL函数本质是signed char

BOOL test(BOOL mybool){
    return NO;
}

int main(){
    BOOL b = YES;
    
    BOOL b2 = NO;
    
    BOOL b3 = 1;
    
    BOOL b4 = 0;
    
    NSLog(@"%i",b);
    NSLog(@"%d",test(YES));
    return 0;
}