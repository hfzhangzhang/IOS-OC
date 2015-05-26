//
//  point.h
//  My－OC
//
//  Created by hfzhangzhang on 15/1/19.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import <Foundation/Foundation.h>

//点语法为我们提供了一种调用getter与setter方法的缩写形式

//调用setter方法
//下面代码中，对象point会自动调用名为 set + 点后面的字符的方法
//在OC中，通过对象指针后面加点的，都是调用调用方法
//point.x = 4;

//调用getter方法
//下面代码中，对象point会自动调用名为 点后面的字符的方法
//x = point.x;

//[结论]点语法方法=号的左边就会调用setter方法，放在=号的右边就会调用getter方法。

//点语法，与字段名无关，与之有关的是点（.）后面的字符


@interface point : NSObject

@end
