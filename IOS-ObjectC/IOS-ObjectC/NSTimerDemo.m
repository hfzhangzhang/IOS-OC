//
//  NSTimerDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/30.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSTimerDemo.h"

@implementation NSTimerDemo
-(void)timer
{
//    -(void) createTimer
//    {
//        //通过NSTimer类方法创建一个定时器
//        //参数一:间隔时间长度,以秒为单位(产生一个时间事件)
//        //参数二:表示被调用函数的拥有对象(指针)
//        //参数三:定时器会在指定的时间间隔调用此函数
//        //参数四:用户附加参数
//        //参数五:是否重复定时器的事件调用
//        //     :YES表示每隔参数一的时间都会调用参数三
//        //     :NO表示在参数一时间片段后一次调用参数三就结束
//        _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer:) userInfo:@"name01" repeats:YES] ;
//    }
//    
//    -(void) createTimer2
//    {
//        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer:) userInfo:@"name02" repeats:YES] ;
//    }
//    
//    -(void) updateTimer:(NSTimer*) timer
//    {
//        static int counter = 0 ;
//        NSLog(@"timer  = %d,name = %@" ,counter,timer.userInfo) ;
//        counter++ ;
//        if (_timer == timer)
//        {
//            if (counter > 20)
//            {
//                [_timer invalidate] ;
//                _timer = nil ;
//                // [timer invalidate] ;
//                // timer = nil ;
//            }
//            NSLog(@"定时器一调用!");
//        }
//        else
//        {
//            NSLog(@"定时器二调用!");
//        }
//        //if (counter == 10)
//        // {
//        // //使定时器失效,停止当前定时器
//        // [timer invalidate] ;
//        // timer = nil;
//        // }
//    }
    
    
    //NSRunLoop 让程序始终处于运行状态
    //    NSRunLoop *runloop = [NSRunLoop currentRunLoop];
    //    [runloop run];
    
 //   [[NSRunLoop currentRunLoop] run];
    
}
-(void)timer2
{
    NSTimer *time1 = [NSTimer timerWithTimeInterval:1.0 target:self selector:nil userInfo:nil repeats:YES];
    //NSRunLoopCommonModes 有滚动也监听
    [[NSRunLoop currentRunLoop]addTimer:time1 forMode:NSRunLoopCommonModes];
    
    NSTimer *time2 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:nil userInfo:nil repeats:YES];
    //滚动不会监听
    [[NSRunLoop currentRunLoop]addTimer:time2 forMode:NSDefaultRunLoopMode];
    
    //定时器实效
    [time2 invalidate];
}
@end
