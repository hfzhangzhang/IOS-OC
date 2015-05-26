//
//  NSdataDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/27.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSdataDemo.h"
#define PATH @"/Users/qianfeng/zsq/ocTeach/ocDay10/Day10_NSData归档/Day10_NSData归档/temp.txt"
@implementation NSdataDemo
-(void)nsdata
{
    NSString *str = @"abcdefg\0";
    //NSData类，是存放二进制数据的类，我们可以将任意数据，任意对象生成一个NSData类
    //字符串创建NSData类对象
    
    //归档：用任意类型的数据或者对象，创建NSData对象的过程。
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"%@", data);
    NSLog(@"%s", data.bytes);
    
    //第一个参数为文件路径（包含文件名， 如果文件不存在，会自动创建）
    //atomically原子的。它保证当前对文件的操作是原子操作。当前操作文件的过程中，有其他人也要操作文件，他会保证当前操作结束才会让其他人操作。
    [data writeToFile:PATH atomically:YES];
    
    //从文件中读取内容，创建NSData对象
    NSData *data1 = [NSData dataWithContentsOfFile:PATH];
    NSLog(@"%s", data1.bytes);
    NSLog(@"%@", data1);

}

@end
