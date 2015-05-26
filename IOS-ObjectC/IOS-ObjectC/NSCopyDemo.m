//
//  NSCopyDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/29.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSCopyDemo.h"

@implementation NSCopyDemo
//Foundation下的基础类，可以直接使用copy或者mutablecopy，是因为，他们已经遵循了NSCopying  NSMutablCopying协议，实现了协议中声明的方法。

//想要自己创建的类能够copy mutablecopy,就必须遵循NSCopying  NSMutablCopying协议，实现协议中声明的方法。
//类中字段。

//allocWithZone方法，会ZONE的内存上分配一段内存给当前对象使用。copyWithZone方法中创建对象一定使用allocWithZone
  
//在继承中，由于创建的对象无法确定，但是我们又希望能创建正确的类型。所以，用[self class]在运行时判断具体的对象类型。然后再创建该类型的对象。
//Tire *newTire = [[[self class] allocWithZone:zone] initWithPreesuer:[self pressure] andRadius:[self radius]];

//拷贝汽车对象，会深拷贝（分配自身的内存空间，以及字段所指向的对象的内存空间）

//向一个对象发送copy消息，该对象会自动调用copyWithZone方法。copyWithZone的方法，创建了一个新的对象，该对象的引用计数为1.


-(void)myCopy
{
    NSString *str = @"abc";
    //copy会创建一个全新的对象，创建的这个对象的引用计数为1，不修改原对象的引用计数。
    NSString *str1 = [str copy];
    //数组和字典的COPY是浅拷贝。
    NSArray *arr = @[@"one", @"two", @"three"];
    NSArray *arr2 = [[NSArray alloc] initWithObjects:nil];
    NSArray *arr1 = [arr2 copy];
    NSLog(@"%p, %p", arr2, arr1);
    
    NSMutableArray *mul = [[NSMutableArray alloc] initWithObjects:@"one", nil];
    //mutableCopy拷贝的对象，如果是可变属性的对象，则可变属性依然存在。如果为非可变对象，则创建该类型的可变对象。
    NSMutableArray *mul1 = [arr mutableCopy];
    
    //Copy拷贝的对象，如果是可变属性的对象，则可变属性不复存在。
    NSArray *mul2 = [mul copy];
    [mul1 addObject:@"two"];
    
    NSLog(@"%@", mul);
    NSLog(@"%@", mul1);
    NSLog(@"%p, %p", mul, mul1);

}
//- (id)copyWithZone:(NSZone *)zone
//{
//    //    AllWeatherTire *copyTire = [[[self class] allocWithZone:zone] initWithPreesuer:[self pressure] andRadius:[self radius] andPrice:[self price] andWeight:[self weight]];
//    
//    //通过[super copyWithZone:zone]创建的对象是子类的对象（AllWeatherTire的对象），唯一的不足：就是子类部分字段的内容为没有意义的值
//    AllWeatherTire *copyTire = [super copyWithZone:zone];
//    //给子类的字段赋值。
//    copyTire.price = _price;
////    copyTire.weight = _weight;
////    return copyTire;
////}
//
//- (void)setName:(NSString *)name {
//    if (_name != name) {
//        [_name release];
//        _name = [name copy];
//    }
//}


//Person *p = [[Person alloc] init];
//NSMutableString *name = [NSMutableString stringWithString:@"jack"];
//p.name = name;
//
////如果Person的name是retain,则此处的name与person对象的name指向的是同一个字符串对象
////此处的name修改之后，会导致person的name也被修改，破外了person对象的封装性
//[name setString:@"tom"];
//
////面向对象的封装性，只能通过set方法去修改属性
////[p setName:@""];
//
//NSLog(@"p.name=%@",p.name);
//
//
///*
// Foundation框架中可复制的对象，当我们copy的是一个不可变对象时，
// 它的作用相当于retain(系统做的内存优化)
// */
//
////[不可变对象 copy];  等价于 [不可变对象 retain]
////不可变对象的copy相当于retain，不是真正的拷贝
//NSArray *array1 = [NSArray array];
//NSLog(@"array2的计数：%ld",[array1 retainCount]);
//NSArray *array2 = [array1 copy];
//if (array1 == array2) {
//    NSLog(@"array1 == array2");
//    NSLog(@"array2的计数：%ld",[array2 retainCount]);
//}
//
//
////mutableCopy拷贝方法，不管什么对象都是真实拷贝



@end
