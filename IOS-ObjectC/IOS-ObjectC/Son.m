//
//  Son.m
//  Day7_继承Demo1
//
//  Created by qianfeng on 14-7-29.
//  Copyright (c) 2014年 cocoa. All rights reserved.
//

#import "Son.h"

@implementation Son

//在子类中，如果父类的方法已经不适合子类使用，我们可以通过重写父类的方法，提供符合当前类使用的方法。
//如果我们需要重写父类的方法，则父类的方法应该是虚方法。OC类中，所有方法都是虚方法。
- (void)jump
{
    NSLog(@"Son can jump 1.5m");
}

//在子类中，我们可以提供一些子类独有的方法。
- (void)swim
{
    NSLog(@"Son can swim...");
}

//很多时候，我们重写某个方法，并不是要把父类的方法完全重写，我们需要父类提供的方法把父类那部分的事情给做好（[super 方法名];），然后我们添加自己要做的部分。
- (void)show
{
//    NSLog(@"我是 %@, 身高 %d, 体重%d", _name, _height, _weight);
    [super show];
    [self swim];
}
@end



