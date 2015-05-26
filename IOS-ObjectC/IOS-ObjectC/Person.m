//
//  Person.m
//  Day1_类的初认识
//
//  Created by qianfeng on 14-7-21.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import "Person.h"

//类的实现
//@implementation 类名
//@end

@implementation Person

//oc中成员的方法的实现和c语言函数体的实现是一样的，
//除了函数的声明不同
- (void)print
{
    NSLog(@"I am person print!");
}

//getter方法的实现
- (char *)name
{
    return _name;
}

//setter方法的实现
- (void)setName:(char *)name
{
    strcpy(_name, name);
    //self它是对象指针，指向调用这个方法的对象,它是由我们编译器自动赋值
    self.name =name;
}

@end//表示类的实现到此结束
