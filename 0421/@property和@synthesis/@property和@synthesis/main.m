//
//  main.m
//  @property和@synthesis
//
//  Created by Sophia Tang on 15/4/21.
//  Copyright (c) 2015年 Sophia Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [Person new];
        [p setAge:20];
        //[p setName:@"JACK"];
        p.name=@"JACK";
        [p setHeight:180];
        [p setWeight:70.0];
        
        
        
        NSLog(@"%@ is %d years old, %dcm tall, %fkg.",p.name,p.age,p.height,p.weight);
        
        Car *c = [Car new];
        c.speed=200;
        c.wheels=4;
        
        NSLog(@"Car has %d wheels and its speed is %dkm/h.",c.wheels,c.speed);
     
        Dog *d = [Dog new];
        d.age=5;
        NSLog(@"Dog is %d years old",d.age);
    }
    return 0;
}
