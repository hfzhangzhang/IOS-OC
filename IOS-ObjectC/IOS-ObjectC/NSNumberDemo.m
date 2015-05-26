//
//  NSNumberDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/28.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSNumberDemo.h"

@implementation NSNumberDemo
//C语言中的基础数据类型，没办法直接添加到OC的常用数据结构（NSArray, NSDictionary）中,这些数据结构要求存放的是对象指针，所以我们需要一个类将C的基础数据类型转换成类类型。

-(void)nsnumber
{
    //用整形数10创建一个NSNumber的对象。
    //初始化方法创建
    NSNumber *number1 = [[NSNumber alloc] initWithInt:10];
    NSNumber *number2 = [[NSNumber alloc] initWithFloat:10.88];
    NSNumber *number3 = [[NSNumber alloc] initWithChar:'c'];
    
    NSLog(@"%@, %@, %@", number1, number2, number3);
    
    
    //类方法创建
    NSNumber *number4 = [NSNumber numberWithBool:YES];
    NSLog(@"%@", number4);
    
    //xcode5.0后，可以用下面方式来创建NSNumber对象
    NSNumber *number5 = @4;
    NSNumber *number6 = @4.123;
    
    //1
    NSNumber *number7 = @'c';
    NSLog(@"%@", number5);
    
    //从NSNumber类的对象中，取出存放的数据
    int value1 = [number4 intValue];
    float value2 = [number6 floatValue];
    char c = [number7 charValue];
    
    //arr创建时添加到自动释放池中//2
    NSArray *arr = @[number7, number2, number3, @1];
    NSLog(@"%@",arr);

}

@end
