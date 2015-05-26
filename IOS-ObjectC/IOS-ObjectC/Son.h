//
//  Son.h
//  Day7_继承Demo1
//
//  Created by qianfeng on 14-7-29.
//  Copyright (c) 2014年 cocoa. All rights reserved.
//

#import "Father.h"

//Son类继承自Father,会自动拥有父类的字段，属性，以及方法（注：不包括私有的方法或字段）
//Son类可以填加自己的字段，属性，方法。

//在继承中，方法的查找，首先从当前类开始查找，找到则调用，没找到则从父类中去找，如果直到根类都没有找到该方法，则报错。
@interface Son : Father
{
    NSString *interst;
}
@property int test;

- (void)swim;
@end



