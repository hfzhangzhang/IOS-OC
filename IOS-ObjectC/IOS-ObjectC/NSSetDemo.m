//
//  NSSetDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/28.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSSetDemo.h"

@implementation NSSetDemo

-(void)nsset
{
    
    //1.NSSet的创建
    NSString *s1 = @"zhangsan";
    NSString *s2 = @"lisi";
    NSSet *set1 = [[NSSet alloc] initWithObjects:s1,s2, nil];
    NSSet *set2 = [NSSet setWithObjects:s1,s2, nil];
    //把数组array中的所有元素，存储到set3中
    NSSet *set3 = [NSSet setWithArray:nil];
    
    //2.NSSet转成数组
    NSArray *array1 = [set1 allObjects];
    
    //3.返回元素的个数
    NSUInteger count = [set1 count];
    
    //4.从容器中随机取出一个元素
    NSString *string1 = [set1 anyObject];
    
    //5.判断某一个对象是否在NSSet中
    BOOL isContains = [set1 containsObject:@"lisi"];
    
    //6.NSSet中不能重复存同一个对象
    
    //数组中是可以存取重复的对象
    NSString *str = @"jack";
    NSArray *array2 = [NSArray arrayWithObjects:str,str, nil];
    NSLog(@"%@",array2);
    
    //NSSet中不能重复存储相同的对象
    NSSet *set4 = [NSSet setWithObjects:str,str, nil];
    NSLog(@"%@",set4);
    
    /*
     NSSet与NSArray的区别
     1. 数组是有下标，NSSet是没有下标的
     2. 数组是有序的，NSSet是无序的
     3. 数组是可以重复存储同一个对象，NSSet反之，不能重复存储对象
     */
    
    //    NSMutableSet
    

}
  


@end
