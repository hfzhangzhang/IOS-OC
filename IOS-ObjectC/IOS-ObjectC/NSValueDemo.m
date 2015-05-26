//
//  NSValueDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/28.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSValueDemo.h"

typedef struct
{
    int a;
    char c;
    float f[5];
}ST_STRUCT;

//NSNumber,NSValue都是类蔟（一大堆类，并不是一个类），工厂类，不能从他们继承。
//NSString, NSArray,NSDictionary,以及相应的MUTAL类也都是类蔟。也不能从他们继承。

@implementation NSValueDemo
-(void)value
{
    //NSNumber是NSValue的子类。
    //NSValue可以存放任意类型的数据，包括数据，指针，结构体，甚至是对象。
    int a[5] = {1,2,3,4,100};
    //第一个参数应该是一个地址，
    //第二个参数objCType，要求传入的是数据的类型。
    //@encode会根据数据类型返回一个oc中形容数据的TYPE的C字符串。
    NSValue *value = [[NSValue alloc] initWithBytes:a objCType:@encode(int[5])];
    
    NSLog(@"--%s", @encode(int[5]));
    NSLog(@"--%s", @encode(int));
    NSLog(@"--%s", @encode(char));
    NSLog(@"--%s", @encode(float));
    NSLog(@"--%s", @encode(ST_STRUCT));
    
    NSLog(@"%@", value);
    
    //取得NSValue对象里面的值，我们应该给getVlaue方法传入和存储的类型（@encode得到的类型）一样。
    int b[5];
    [value getValue:b];
    for (int i = 0  ;  i < 5; i++) {
        NSLog(@"%d", b[i]);
    }
    
    //类方法
    //        NSValue *value1 = [NSValue valueWithBytes:<#(const void *)#> objCType:<#(const char *)#>];
    //        NSValue *value2 = [NSValue value:<#(const void *)#> withObjCType:<#(const char *)#>]
    
    
    NSString *str = @"我是常量字符串";
    NSString *str1 = [[NSString alloc] initWithUTF8String:"我是堆上字符串"];
    
    //打印字符串的具体类型
    NSLog(@"%@", [str class]);
    NSLog(@"%@", [str1 class]);
    
    //从类蔟中继承，很多方法都不能使用。所以不应该从类蔟继承
    //  MyString *str3 = [MyString stringWithFormat:@"%d,%c",5, 'c'];
    //  NSLog(@" %@",  str3);

}
@end
