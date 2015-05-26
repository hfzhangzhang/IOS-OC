//
//  NSNullDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/28.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSNullDemo.h"

//1.NSNull 在可变数组，可变字典等数据结构中起占位作用。[NSNull null];
//2. nil :修饰对象指针。
//3. NULL ：修饰普通指针。
//4. Nil : 修饰类指针 Class cls = Nil;

@implementation NSNullDemo
-(void)null
{
    NSMutableArray *arr1 = [[NSMutableArray alloc] initWithObjects:@"one", [NSNull null], @"three", @"four", nil];
    [arr1 replaceObjectAtIndex:1 withObject:@"two"];

}

@end
