//
//  Broadcast.m
//  NSNotification
//
//  Created by hfzhangzhang on 14/11/12.
//  Copyright (c) 2014年 hfzhangzhang. All rights reserved.
//

#import "Broadcast.h"

@implementation Broadcast

-(void)broadcastLooper{
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(broadcast) userInfo:nil repeats:YES];
}
-(void)broadcast{
    //取得通知中心
    NSNotificationCenter*nc = [NSNotificationCenter defaultCenter];
    static int i;
    NSString*count = [NSString stringWithFormat:@"broadcast%d",i++];
    NSDictionary*dict = [NSDictionary dictionaryWithObjectsAndKeys:@"anhui",@"Name",count,@"Value", nil];
    //发送广播参数一，广播的频段（名字）
    [nc postNotificationName:@"ANHUI" object:self userInfo:dict];
}
@end
