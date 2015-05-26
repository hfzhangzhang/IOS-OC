//
//  UserArchiver.m
//  My－OC
//
//  Created by hfzhangzhang on 15/4/28.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "UserArchiver.h"

@implementation UserArchiver
// 在对象归档的时候调用
// 哪些属性需要归档
// 这些属性怎么归档
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeInt:_age forKey:@"age"];
}

// 在对象解档的时候调用
// 哪些属性需要解档
// 这些属性怎么解档
- (id)initWithCoder:(NSCoder *)aDecoder
{
    // 当父类实现了NSCoding，就能调用 [super initWithCoder]
    if (self = [super init]) {
        _age = [aDecoder decodeIntForKey:@"age"];
    }
    return self;
}

@end


