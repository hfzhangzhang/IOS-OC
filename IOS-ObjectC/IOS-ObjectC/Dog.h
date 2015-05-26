//
//  Dog.h
//  Day2_类的初始化方法
//
//  Created by qianfeng on 14-7-22.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    NSString *_name;
    int _age;
    int _weight;
}

//initXXX的方法，都叫初始化方法（构造方法），是用来创建对象时，对对象进行初始化。
- (id)init;
- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name andAge:(int)age;
- (id)initWithName:(NSString *)name andAge:(int)age andWeight:(int)weight;

//－表示实例方法（对象方法）， ＋表示类方法
//-表示的方法，只能通过对象来调用
//＋表示的方法，只能通过类名来调用
//-/+ (返回类型)方法名;

//类方法特性:
//  1.类方法中不能访问成员变量
//  2.类方法中不能使用成员方法

//类方法的作用
//  1.创建对象
//  2. 为我们的类提供简洁易用的接口供外部使用。

//有一个init方法就应该有一个类方法


//alloc
//类名WithXXX
+ (id)dog;
+ (id)dogWithName:(NSString *)name;
+ (id)dogwithAge:(int)age;
+ (id)dogWithName:(NSString *)name andAge:(int)age;


@end
