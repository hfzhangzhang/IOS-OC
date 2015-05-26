//
//  Dog.m
//  Day2_类的初始化方法
//
//  Created by qianfeng on 14-7-22.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import "Dog.h"

@implementation Dog

//init 这个方法从父类继承的，所以我们可以不在接口中声明。

//id是一个泛型指针,可以指向任意类型的对象，像c语言中的void *，在oc中更像是NSObject *;

- (Dog *)init
{
    //super是编译器提供的一个关键字。
    //当看到super，会自动的去当前类的父类中寻找写在super后面的方法。找到则调用方法。如果没有找到，再从当前类父类的父类中去找。如果找到祖宗类还没有找到，则报错。
    //在对象中，有一部分数据是来自父类，我们需要调用父类的初始化方法来做初始化的工作
    //[super init]失败会返回nil
    //NULL用来初始化普通的指针
    //nil用来表示空的对象指针
//    self = [super init];
//    //判断父类是否初始化成功，成功则进行当前类部分的初始化
//    if (self) {
//        //在这里做我们自己的初始化
//        _name = @"noname";
//        _age = 1;
//        _weight = 2;
//    }
//    return self;
    
    return [self initWithName:@"noname"];
}

- (id)initWithName:(NSString *)name
{

    return [self initWithName:name andAge:2];

}

- (id)initWithName:(NSString *)name andAge:(int)age
{

    return [self initWithName:name andAge:age andWeight:2];
}

- (id)initWithName:(NSString *)name andAge:(int)age andWeight:(int)weight
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _weight = weight;
    }
    
    return  self;
}











@end
