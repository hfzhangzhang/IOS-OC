//
//  User.m
//  Shared
//
//  Created by hfzhangzhang on 14/12/26.
//  Copyright (c) 2014年 hfzhangzhang. All rights reserved.
//

#import "User.h"

@implementation User
//在oc中，有时我们希望有一个对象能再整个工程（模块中共享），单例方法就能实现这样的功能。

//（了解）单例模式是一种设计模式，它所有的创建对象的方法，返回的都是同一个对象。
//单例方法会传一个单例对象。写法有sharedDog,defaultDog等
//只要你调用单例方法，你就会获取同一个对象。
//无论你调用多少次单例方法，你获得的都是同一个对象
//单例方法，只有第一次调用才会创建对象，以后每次调用都返回的是第一次创建的对象


+ (id)defaultUser
{
    //static成员或对象的生命周期，（创建）比main早，（消失）比main晚。
    //static具有记忆功能。
    static User * user;
    
    @synchronized(self){//加锁，保证线程安全，只可以一个线程调用
        if (!user) {
            user = [[[self class] alloc] init];
        }
    }
    return user;
}

+(id)sharedUser
{
    static User * user;
    static dispatch_once_t userblock;
    dispatch_once(&userblock,^{
        if (!user) {
            user = [[[self class] alloc] init];
        }
    });
    
    return user;

}
//+(void)initialize
//{
//    static BOOL initialized = NO;
//    if (initialized == NO) {
//        initialized = YES;
//        User=[[self alloc]init];
//    }
//}

//+(instancetype)allocWithZone:(struct _NSZone *)zone
//{
//    return [[self defaultUser]retain];
//}
//+(id)copyWithZone:(struct _NSZone *)zone
//{
//    return self;
//}
//-(id)retain
//{
//    return self;
//}
//-(oneway void)release
//{
//    
//}
//-(NSInteger)retainCount
//{
//    return UINT16_MAX;
//}
//-(void)dealloc
//-(id)autorelease

@end
