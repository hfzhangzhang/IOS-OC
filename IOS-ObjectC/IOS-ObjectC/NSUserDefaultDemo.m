//
//  NSUserDefaultDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/2/2.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSUserDefaultDemo.h"

@implementation NSUserDefaultDemo

//写入
-(void) pressWrite
{
    //获得用户默认数据对象
    //对象采用单例模式
    //使用standardUserDefaults获得唯一的对象
    NSUserDefaults* userDefualt = [NSUserDefaults standardUserDefaults] ;
    //添加(设置)对象
    //参数：对象以及响应的关键字
    //setObject:id(一定是能够存储为plist文件)
    //NSString*,NSNumber*
    //NSArray*,NSDictionany*
    [userDefualt setObject:@"michael" forKey:@"NAME"] ;
    //key对象通常使用字符串对象
    [userDefualt setObject:[NSNumber numberWithInt:10] forKey:@"NUM"] ;
    
    //创建数组
    NSMutableArray* array = [[NSMutableArray alloc] init] ;
    
    //初始化10个数据
    for (int i = 0 ; i < 10 ; i++)
    {
        NSString* str = [NSString stringWithFormat:@"数据%d",i+1];
        [array addObject:str] ;
    }
    //将数组添加到用户数据中
    [userDefualt setObject:array forKey:@"ARRAY"] ;
    
    //    UIView* view = [[UIView alloc] init] ;
    //    view.frame = CGRectMake(0, 0, 320, 440) ;
    //    0x00008008
    
    //    [userDefualt setObject:view forKey:@"VIEW"] ;
    //添加一些基本对象类型
    //设置BOOL值
    [userDefualt setBool:YES forKey:@"LOGIN"] ;
    [userDefualt setBool:NO forKey:@"LOGIN"] ;
    [userDefualt setDouble:1.23456 forKey:@"DOUBLE"] ;
    [userDefualt setFloat:1.2345 forKey:@"FLOAT"] ;
    //设置年龄
    [userDefualt setInteger:12 forKey:@"AGE"] ;
    
    //同步数据到磁盘(沙盒)中
    //自动创建一个plist 文件
    //只有NSUserDefault对象才可以访问此plist文件
    BOOL isOK = [userDefualt synchronize] ;
    if (isOK == YES) {
        NSLog(@"同步数据成功！");
    }
    else{
        NSLog(@"同步失败！");
    }
    
    //[UIApplication sharedApplication] ;
    
    // 同步：把内存中的数据和沙盒同步
    /*
     内存和沙盒的数据不同步
     */
    [userDefualt synchronize];
}
//读出
-(void) pressRead
{
    //获得用户数据单例
    //如果之前有数据被存储
    //单例的内存中就会读入之前存储的数据
    NSUserDefaults* userDefault = [NSUserDefaults standardUserDefaults] ;
    
    NSString* strName = [userDefault objectForKey:@"NAME"] ;
    NSNumber* num = [userDefault objectForKey:@"NUM"];
    //数组数据
    NSArray* array = [userDefault objectForKey:@"ARRAY"] ;
    
    for (NSString* str in array)
    {
        NSLog(@"%@",str);
    }
    
    //获取BOOL对象
    BOOL isLogin = [userDefault boolForKey:@"LOGIN"] ;
    double dValue = [userDefault doubleForKey:@"DOUBLE"] ;
    float fValue = [userDefault floatForKey:@"FLOAT"] ;
    int age = [userDefault integerForKey:@"AGE"];
    
    NSLog(@"name = %@",strName) ;
    NSLog(@"ARRAY = %@",array) ;
    NSLog(@"isLogin = %d",isLogin) ;
    NSLog(@"doube = %f",dValue) ;
}


@end
