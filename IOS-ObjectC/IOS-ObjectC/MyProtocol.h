//
//  MyProtocol.h
//  Day9_协议Demo1
//
//  Created by qianfeng on 14-7-31.
//  Copyright (c) 2014年 cocoa. All rights reserved.
//
#import <Foundation/Foundation.h>

//协议: 协议和JAVA中得接口非常相似，都是通过简单的方法声明列表来发布接口。任何想要实现协议的类都可以去遵循。
//协议的作用
//    1、声明期待其他类实现的接口
//    2. 声明对象的方法的同时隐藏类的接口。
//    3. 捕获类中与继承无关的相似的接口。


//@protocol 协议名 <遵循的协议名>
//添加方法；
//@end

//NSObject在这里指的是NSObject协议。

//协议中得方法，由遵循协议的类来实现。协议中只写接口。
//协议中的方法，通过向遵循协议的类的对象来发送协议中的消息来调用。
//协议实现了和C++多继承相类似的功能。只要遵循协议的类，都相当于继承了协议中声明的方法，只是这个方法体必须由自己类实现。
//协议中只能添加方法声明，不能添加字段
//声明一个协议，这个协议同时遵循某一个协议（自己写的协议，或者是NSObject协议）
@protocol MyProtocol <NSObject>

- (void)bark;

@end

//@interface 类名 : 父类名 <协议名>
//以下为Dog类继承自NSObject类，并且遵循MyProtocol协议
//遵循协议的类，必须实现协议中声明的方法

//类可以遵循多个协议，协议之间用","隔开 <协议1，协议2>
@interface Dog : NSObject <MyProtocol>
//实现协议中的方法，方法可以不声明
//- (void)bark;

- (void)run;

@implementation Dog
- (void)run
{
    NSLog( @"i am a dog ,i am running....");
}

@end



//协议用来规范接口。
@protocol SortArrayProtocol <NSObject>
//协议中添加属性只会添加getter和setter方法。
@property int age;

- (BOOL)isBiggerThanObject:(id<SortArrayProtocol>) obj;

//@required关键字修饰的方法，是必须实现的方法
//默认为@required
@required
//- (void)testRequired;

//@optional可选方法，遵循协议的类自己选择是否实现。
@optional
- (void)testOptional;


//以下写法，只能将遵循协议的类的对象的指针赋值给obj;
//id<协议名> obj;
//遵循协议的对象，只能调用协议中声明的方法。
// id<SortArrayProtocol> obj = [[Dog alloc] init];
//NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:5];
//
//id<SortArrayProtocol> obj[5];




