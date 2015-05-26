//
//  NSTimerDemo.h
//  My－OC
//
//  Created by hfzhangzhang on 15/1/30.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimerDemo : NSObject
{
    //定义一个定时器
    //定时器可以制定间隔时间来进行函数(事件)调用
    //只有在UI框架结构下可以直接使用
    NSTimer*_timer;
}
@end
