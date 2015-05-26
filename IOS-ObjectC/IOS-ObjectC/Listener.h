//
//  Listener.h
//  NSNotification
//
//  Created by hfzhangzhang on 14/11/12.
//  Copyright (c) 2014年 hfzhangzhang. All rights reserved.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        //接收者可以多个，在接受到消息就会触发函数
//        Listener*l=[[Listener alloc]init];
//        [l wantToListen];
//        
//        Broadcast*bj=[[Broadcast alloc]init];
//        [bj broadcastLooper];
//        //不让计数器退出
//        [[NSRunLoop currentRunLoop]run];
//    }
//    return 0;
//}


@interface Listener : NSObject

-(void)wantToListen;
@end
