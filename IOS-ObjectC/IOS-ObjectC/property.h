//
//  property.h
//  My－OC
//
//  Created by hfzhangzhang on 15/1/19.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface property : NSObject
{
    //NSString *_name;
    //int _age;
    int _height;
    int _weight;
    NSString *loves;
}

//声明属性
//@property 数据类型 变量名  自动声明了age字段的getter和setter方法
//在XCODE4.6以后，声明属性不仅会声明getter和setter方法，并且会将getter和setter方法实现
//当字段名和属性中的名称相同时，编译器会将他们自动关联
//如果字段名没有和属性名相同的，则编译器会为我们添加一个字段，字段名为 _属性名
@property int age;
@property NSString *name;

// readonly只读，当属性中有这个约束的时候，只提供getter方法
@property (readonly) NSString *ID;

//readwrite可读可写（默认约束），提供getter和setter方法
@property (readwrite) int height;

//atomic原子的，在多线程的情况下保护数据。对atomic约束的属性，对属性进行修改时，在同一时间只有一个线程能够进行操作。
@property (atomic) int weight;

//在默认下是nonatomic，atomic修饰的属性和nonatomic修饰的属性相比，效率较低
@property (nonatomic) NSString *loves;

//多个约束修饰属性，中间逗号隔开
@property (readonly , atomic) int wangwang;

//我们可以通过 getter = 方法名，setter = 方法名来给属性的getter，setter方法改名。
@property (readwrite,getter = ggg , setter = sss:) int xiaohei;

- (void)test;
@end
