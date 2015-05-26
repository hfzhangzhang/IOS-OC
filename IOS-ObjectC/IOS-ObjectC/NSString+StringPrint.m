//
//  NSString+StringPrint.m
//  Day6_类别
//
//  Created by qianfeng on 14-7-28.
//  Copyright (c) 2014年 cocoa. All rights reserved.
//

#import "NSString+StringPrint.h"

//匿名类别经常用在类的实现文件上面，它声明了一个私有字段，这个字段我们不希望被用户使用，同样不希望被用户知道。
//@interface Dog ()
//{
//匿名类别中可以添加字段
//匿名类别声明在类的.m文件中，不管是字段还是方法，都不能在类外使用。这些方法和字段都是私有的
//@public
//    int _weight;
//}
//
////匿名类别中可以添加属性
//@property int height;
//@end

@implementation NSString (StringPrint)
- (void)print
{
    //在类别的方法中，原类的字段可以直接访问。
    NSLog(@"%lu", (unsigned long)self.length);
    
}


@end




