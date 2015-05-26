//
//  nsobject.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/19.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSObjectDemo.h"

@implementation NSObjectDemo
//延迟调用某一个方法
-(void)Delayed
{
    [self performSelector:nil withObject:@"zhang" afterDelay:0.5];
}

@end
