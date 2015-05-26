//
//  Listener.m
//  NSNotification
//
//  Created by hfzhangzhang on 14/11/12.
//  Copyright (c) 2014年 hfzhangzhang. All rights reserved.
//

#import "Listener.h"

@implementation Listener

-(void)wantToListen
{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(resvBcast:) name:@"ANHUI" object:nil];
}
-(void)resvBcast:(NSNotification*)notify
{
    NSLog(@"notify is %@",notify);
}
@end
