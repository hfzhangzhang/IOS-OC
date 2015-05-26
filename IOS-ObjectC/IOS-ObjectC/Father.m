//
//  Father.m
//  Day7_继承Demo1
//
//  Created by qianfeng on 14-7-29.
//  Copyright (c) 2014年 cocoa. All rights reserved.
//

#import "Father.h"

@implementation Father
- (id)initWithName:(NSString *)name andHeight:(int)height andWeight:(int)weight
{
    if (self = [super init]) {
        _name = name;
        _height = height;
        _weight = weight;
    }
    return self;
}

- (void)run
{
    NSLog(@"father can run");
}

- (void)jump
{
    NSLog(@"father can jump 1.2m");
}


- (void)show
{
    NSLog(@"我是 %@, 身高 %d, 体重%d", _name, _height, _weight);
    [self run];
    [self jump];
}

@end








