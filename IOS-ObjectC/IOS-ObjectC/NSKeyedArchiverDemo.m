//
//  NSKeyedArchiverDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/4/28.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSKeyedArchiverDemo.h"
#import "UserArchiver.h"

@implementation NSKeyedArchiverDemo
- (IBAction)save:(id)sender {
    
    UserArchiver *person = [UserArchiver new];
    person.age = 18;
    
    NSString *docPath =  NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    
    // 拼接文件路径
    NSString *filePath = [docPath stringByAppendingPathComponent:@"person.data"];
    
    [NSKeyedArchiver archiveRootObject:person toFile:filePath];
    
    
}
- (IBAction)read:(id)sender {
    NSString *docPath =  NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    
    // 拼接文件路径
    NSString *filePath = [docPath stringByAppendingPathComponent:@"person.data"];
    
    UserArchiver *p = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    NSLog(@"%d",p.age);
}

@end
