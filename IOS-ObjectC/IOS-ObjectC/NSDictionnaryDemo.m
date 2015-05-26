//
//  NSDictionnaryDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/27.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSDictionnaryDemo.h"

@implementation NSDictionnaryDemo
-(void)dictionnary
{
    
    //字典的存储形式，它是以键值对（key，value）的形式来存储
    //其中key是键 value是值
    //字典可以加快我们数据的查找速度。查找时间复杂度 O(1)
    //在字典中，我们通过key来查找value。
    //字典中存放的数据都是对象指针，
    //一般情况下，key存放的时OC字符串。
    NSDictionary *dict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"one", @"1", @"two", @"2", @"three", @"3", nil];
    
    NSDictionary *dict2 = [NSDictionary dictionaryWithObjectsAndKeys:@"one", @"1", @"two", @"2", @"three", @"3", nil];
    //打印字典和打印数组一样，是打印字典中的对象
    
    //xcode 4.6以后版本提供的创建字典的新方法
    //下面和初始化方法不同，先放key，后放value，并且key和value之间用冒号隔开。每个键值对之间用逗号隔开
    NSDictionary *dict3 = @{@"1": @"one", @"2": @"two", @"3": @"three"};
    //根据key查找value
    NSString *str = [dict1 objectForKey:@"1"];
    NSString *str0=dict3[@"one"];

    
    //字典中键值对个数
    NSUInteger count = [dict1 count];
    NSLog(@"%lu", count);
    
    //获取字典中所有的key
    NSArray *allkeys = [dict2 allKeys];
    NSLog(@"allkeys:%@",allkeys);
    
    //获取字典中所有的value
    NSArray *allvalues = [dict3 allValues];
    NSLog(@"allvalues:%@",allvalues);
    
    //遍历字典
    //快速枚举法,是通过遍历字典中的key，需要我们手动去查找value
    //在遍历时，我们不应该去修改字典或者数组。
    for (id obj in dict1) {
        NSLog(@"%@ -- %@",obj, [dict1 objectForKey:obj]);
    }
    
    //遍历字典中的value
    //返回当前字典对象的值的枚举器
    NSEnumerator *en = [dict1 objectEnumerator];
    id obj;
    while (obj = [en nextObject]) {
        NSLog(@"%@", obj);
    }
    
    //遍历字典中的key
    //返回当前字典对象的键的枚举器
    NSEnumerator *en1 = [dict1 keyEnumerator];
    id obj1;
    while (obj1 = [en1 nextObject]) {
        NSLog(@"%@", obj1);
    }
    
    //NSMutableDictionary继承自NSDictionary，所以NSDictionary可以用得方法，可变字典都可以用
    NSMutableDictionary *mul = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"one",@"1",@"three", @"3", @"two", @"2",  nil];
    
    NSMutableDictionary *mul1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"one",@"1", @"two", @"2", @"three", @"3", nil];
    
    NSMutableDictionary *mul2 = [NSMutableDictionary dictionaryWithDictionary:mul];
    
    //可变字典相对于字典中独有的一些方法
    //添加新的键值对
    [mul2 setObject:@"four" forKey:@"4"];
    //在字典中，键（key）必须唯一。如果在添加键值对时，字典中键已经存在，则修改该键相对应的值。
    //字典中，值（value）可以不唯一。
    //在字典中，键值对的顺序并不是按照我们写得顺序存储，它按照我们的key进行了排序。
    [mul setObject:@"fou" forKey:@"4"];
    
    //删除字典中的元素
    //删除字典或者数组中的元素，后面的元素会往前移，所以在我们遍历数组或者字典的时候，不应该去添加或者删除元素。
    [mul removeObjectForKey:@"2"];
    [mul removeAllObjects];//删除所有
    
    //按照数组中的key批量删除元素
    NSArray *arr = @[@"1", @"4"];
    [mul removeObjectsForKeys:arr];
    
    //查找
    id obj2 = [mul objectForKey:@"3"];
    
    //修改某一个key对应的value
    [mul setObject:@"Thirth" forKey:@"3"];
    
    //将字典dic1中的元素添加到此字典中
    [mul addEntriesFromDictionary:dict1];  //注意：相同的key是不能重复添加到字典中

    
    //重设字典
    [mul setDictionary:mul1];
    
    /*________________________字典排序___________________________*/
    
    NSDictionary *sortDic = @{
                              @"zhangsan":@"50",
                              @"lisi":@"90",
                              @"wangwu":@"80",
                              @"zhao6":@"60"
                              };
    
    //对字典中的value进行排序，参数obj1,obj2 是字典中的value
    //返回值是排好序的key
    NSArray *sortedKeys = [sortDic keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        int v1 = [obj1 intValue];
        int v2 = [obj2 intValue];
        
        if (v1 > v2) {
            return NSOrderedDescending;
        } else if(v1 < v2) {
            return NSOrderedAscending;
        }
        
        return NSOrderedSame;
        
    }];
    
    for (NSString *name in sortedKeys) {
        NSString *score = [sortDic objectForKey:name];
        NSLog(@"name:%@,score:%@",name,score);
    }
    



}
@end
