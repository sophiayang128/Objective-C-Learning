//
//  main.m
//  03-block
//
//  Created by Sophia Tang on 15/4/28.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//


/*
 block总结：
 1. 如何定义block变量
 2. 如何利用block封装代码
 3. block访问外面变量
 4. 利用typedef定义block类型
 typedef int (^MyBlock)(int,int);
 //以后就可以用MyBlcok这个类型来定义block变量
 MyBlock b1,b2;
 MyBlock b3 = ^(int a,int b)
 {
    return a+b;
 };
 */


#import <Foundation/Foundation.h>

typedef int (^MyBlock)(int,int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a = 10;
        __block int b = 12;
        
        void (^block)() = ^
        {
            //block内部可以访问外面的局部变量
            NSLog(@"a=%d",a);
            
            //默认情况下，block内部不能修改外面的局部变量
            
            //给局部变量加上__block关键字后，就可以在block内部被修改
            b = 25;
        };
        
        
        /*
        int (^sumBlock)(int,int) = ^(int a, int b)
        {
            return a+b;
        };
        
        int (^minusBlock)(int,int) = ^(int a,int b)
        {
            return a-b;
        };*/
        MyBlock sumBlock;
        
        sumBlock = ^(int a, int b)
        {
            return a + b;
        };
        
        MyBlock minusBlock = ^(int a,int b)
        {
            return a - b;
        };
        
        MyBlock multiBlock = ^(int a,int b)
        {
            return a*b;
        };
        
        
        
        
    }
    return 0;
}

//没有返回值，没有形参的block
void test()
{
    //block用来保存一段代码
    //block的标志：^
    /*block和函数很像:
     1. 可以保存代码
     2. 有返回值
     3. 有形参
     4. 调用方式一样
     */
    
    //定义block变量
    //如果block没有形参，那么小括号可以省略
    void (^myblock)() = ^{
        NSLog(@"---------");
        NSLog(@"---------");
    };
    
    //利用block变量调用block内部的代码
    myblock();
}

//有返回值 有形参的block
void test2()
{
    int (^sumblock)(int,int) = ^(int a,int b){
        return a+b;
    };
    int c = sumblock(10,11);
    NSLog(@"%d",c);
    
    //block功能：输出n条横线
    void (^lineblock)(int) = ^(int n){
        for (int i=0; i<n; i++) {
            NSLog(@"--------------");
        }
    };
    
    lineblock(3);
}
