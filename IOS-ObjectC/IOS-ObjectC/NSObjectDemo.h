//
//  nsobject.h
//  My－OC
//
//  Created by hfzhangzhang on 15/1/19.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObjectDemo : NSObject

/*
	NSObject.h
 */

#ifndef _OBJC_NSOBJECT_H_
#define _OBJC_NSOBJECT_H_
#if __OBJC__
#include <objc/objc.h>
#include <objc/NSObjCRuntime.h>

@class NSString, NSMethodSignature, NSInvocation;

@protocol NSObject

- (BOOL)isEqual:(id)object;//判断两个对象是否为同一个对象

@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
- (Class)class;
- (instancetype)self;

/*___________________Class__________________*/
//获取Person类的描述
//Class class1 = [Person class]; //class是从NSObject继承下来的类方法
//Class class2 = [p class];

//获取Person父类的描述
//Class sClass = [Person superclass];
//Class s2Class = [p superclass];



/*__________________演示perform的使用__________________*/

- (id)performSelector:(SEL)aSelector;//调用不带参数的方法
- (id)performSelector:(SEL)aSelector withObject:(id)object;//调用带参数的方法
- (id)performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2;//调用带2个参数的方法
- (BOOL)isProxy;
 /*______________isKindOfClass与isMemberOfClass____________*/
- (BOOL)isKindOfClass:(Class)aClass;//判断对象是否是属于类或者他的子类例：[rose isKindOfClass:[Person class]]；
- (BOOL)isMemberOfClass:(Class)aClass;//判断是否是某类创建的


- (BOOL)conformsToProtocol:(Protocol *)aProtocol;
 /*______________respondsToSelector_____________*/

- (BOOL)respondsToSelector:(SEL)aSelector;//判断对象中是否有此方法（如果有则调用，这样程序更加严谨）

- (instancetype)retain OBJC_ARC_UNAVAILABLE;
- (oneway void)release OBJC_ARC_UNAVAILABLE;
- (instancetype)autorelease OBJC_ARC_UNAVAILABLE;
- (NSUInteger)retainCount OBJC_ARC_UNAVAILABLE;
- (struct _NSZone *)zone OBJC_ARC_UNAVAILABLE;

@property (readonly, copy) NSString *description;
@optional
@property (readonly, copy) NSString *debugDescription;
@end


__OSX_AVAILABLE_STARTING(__MAC_10_0, __IPHONE_2_0)
OBJC_ROOT_CLASS
OBJC_EXPORT
@interface NSObject <NSObject> {
    Class isa  OBJC_ISA_AVAILABILITY;
}

+ (void)load;

+ (void)initialize;
- (instancetype)init;


+ (instancetype)new;

+ (instancetype)allocWithZone:(struct _NSZone *)zone;
+ (instancetype)alloc;
- (void)dealloc;

- (void)finalize;

- (id)copy;
- (id)mutableCopy;

+ (id)copyWithZone:(struct _NSZone *)zone OBJC_ARC_UNAVAILABLE;
+ (id)mutableCopyWithZone:(struct _NSZone *)zone OBJC_ARC_UNAVAILABLE;

+ (BOOL)instancesRespondToSelector:(SEL)aSelector;
+ (BOOL)conformsToProtocol:(Protocol *)protocol;
- (IMP)methodForSelector:(SEL)aSelector;
+ (IMP)instanceMethodForSelector:(SEL)aSelector;
- (void)doesNotRecognizeSelector:(SEL)aSelector;

- (id)forwardingTargetForSelector:(SEL)aSelector __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_2_0);
- (void)forwardInvocation:(NSInvocation *)anInvocation;
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector;

+ (NSMethodSignature *)instanceMethodSignatureForSelector:(SEL)aSelector;

- (BOOL)allowsWeakReference UNAVAILABLE_ATTRIBUTE;
- (BOOL)retainWeakReference UNAVAILABLE_ATTRIBUTE;

+ (BOOL)isSubclassOfClass:(Class)aClass;

+ (BOOL)resolveClassMethod:(SEL)sel __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_2_0);
+ (BOOL)resolveInstanceMethod:(SEL)sel __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_2_0);

+ (NSUInteger)hash;
+ (Class)superclass;
+ (Class)class;
+ (NSString *)description;
+ (NSString *)debugDescription;

@end

#endif

#endif


@end
