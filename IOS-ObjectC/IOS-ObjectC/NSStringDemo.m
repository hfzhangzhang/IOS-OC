//
//  NSStringDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/19.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSStringDemo.h"


@implementation NSStringDemo

-(void)string
{

    //创建oc字符串
    NSString *str1 = @"我是一个oc字符串";
    //NSString *str2 = [[NSString alloc] initWithString:@"我爷是一个oc字符串"];
    NSString *str3 = [[NSString alloc] initWithString:str1];
    NSString *str4 = [[NSString alloc] initWithFormat:@"%@ aa %d %c %s", @"aa" ,5, 'c', "dd"];
    NSString *str5 = [[NSString alloc] initWithCString:"abcdefg" encoding:NSUTF8StringEncoding];
    //用文件的内容创建一个字符串
    NSError *error;//0x1
    NSString *str6 = [[NSString alloc] initWithContentsOfFile:@"/tmp/temp.txt" encoding:NSUTF8StringEncoding error:
                      &error/*nil*/];
   // NSString *str7 = [NSString stringWithString:@"aaaaaa"];
    NSString *str = @"aaaaa";
    NSString *str8 = [NSString stringWithString:str];
    NSString *str9 = [NSString stringWithFormat:@"%@ %d", @"bbbbb", 1];
    NSString *str10 = [NSString stringWithUTF8String:"cccccc"];
    NSString *str11 = [NSString stringWithCString:"ddddd" encoding:NSUTF8StringEncoding];
    NSString *str12 = [NSString stringWithContentsOfFile:@"/tmp/temp.txt" encoding:NSUTF8StringEncoding error:nil];
    
    
    //取得字符串长度
    NSUInteger length = [str1 length];
    NSLog(@"%lu",length);
    
    //取字符串中的某一个字符
    //unichar可以兼容任意的字符
    unichar unc = [str1 characterAtIndex:2];
    //打印unichar用％C
    NSLog(@"unc = %C",unc);
    
    //字符串的比较判断字符串内容是否相同 通过==比较的是指针地址是否相等
    BOOL b = [@"aa" isEqualToString:@"aa"];
    if (b == NO) {
        NSLog(@"不相同字符串");
    }
    else{
        NSLog(@"相同字符串");
    }
    
    //比较字符串的大小
    //NSOrderedAscending = -1L, 递增，左边的数据比右边小
    //NSOrderedSame 相同
    //NSOrderedDescending 递减 左边的比右边大
    NSComparisonResult res = [@"abc" compare:@"bcd"];
    if (res == NSOrderedAscending) {
        NSLog(@"左边小");
    }
    else if (res == NSOrderedSame){
        NSLog(@"一样大");
    }
    else{
        NSLog(@"右边小");
    }
    
    //查找字符串
    NSRange range = [@"abcdefghijk" rangeOfString:@"bcd"];
    if (range.location == NSNotFound) {
        NSLog(@"找不到字符串");
    }
    else
        NSLog(@"字符串起点 ＝ %lu, 长度 ＝ %lu", range.location,range.length);
    
    //判断前后缀
    BOOL b1 = [@"www.baidu.com" hasPrefix:@"www."];//前缀
    if (b1 == YES) {
        NSLog(@"有www.的前缀");
    }
    else{
        NSLog(@"没有www.的前缀");
    }
    
    b1 = [@"www.baidu.com" hasSuffix:@".com"];//后缀
    if (b1 == YES) {
        NSLog(@"有.com的后缀");
    }
    else
        NSLog(@"没有.com的后缀");
    
    //字符串转数字（字符串是数字字符串）
    int ivalue = [@"123" intValue];
    NSLog(@"ivalue = %d", ivalue);
    
    double dvalue = [@"12.3" doubleValue];
    NSLog(@"%f", dvalue);
    
    //大小写转换
    //小写转大写
    NSString *str13 = [@"AbCd" uppercaseString];
    //大写转小写
    NSString *str14 = [@"AbCd" lowercaseString];
    //字符串中首字母大写，其他全小写
    NSString *str15 = [@"aBCDef bEd Hi" capitalizedString];
    //字符串提取
    //从指定位置开始到最后一个字符
    NSString *str16 = [@"abcdefg" substringFromIndex:3];
    //从开始到指定位置，不包含指定位置
    NSString *str17 = [@"abcdefg" substringToIndex:5];
    NSRange range1 = {1,4};
    NSString *str18 = [@"abcdefg" substringWithRange:range1];
    //NSMakeRange是构造一个nsrange的结构体变量
    NSString *str19 = [@"abcdefg" substringWithRange:NSMakeRange(1, 4)];

    

    NSLog(@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@",str1,str3,str4,str5,str6,str8,str9,str10,str11,str12,str13,str14,str15,str16,str17,str18,str19);

}
-(void)mutableString
{
    //nsmutablestring继承自nsstring，所以，nsstring的方法，nsmutablstring都可以使用
    
    //1.创建可变字符串
    NSMutableString *mul = [[NSMutableString alloc] init];
    //nsstring的其他实例方法创建字符串在可变字符串中都可使用
    NSMutableString *mul1 = [[NSMutableString alloc] initWithString:@"abc"];
    //nsstring的其他类方法创建字符串在可变字符串中都可使用
    NSMutableString *mul2 = [NSMutableString  stringWithString:@"def"];
    
    //以下写法错误，不能将不可变字符串的首地址赋值或者初始化给可变字符串对象指针
    //        NSMutableString *mul3 = @"abc";
    //        NSString *str = @"abc";
    //        NSMutableString *mul4 = str;
    
    /*--------- 可变字符串中独有的方法-------------*/
    NSMutableString *mul5 = [NSMutableString  stringWithUTF8String:"abcdef"];
    //在可变字符串中追加字符串
    NSLog(@"-----------------------");
    [mul5 appendString:@" ghi"];

    //在可变字符串中，追加格式化字符串
    //command + 向上， 切换到当前文件的头部
    //command + 向下， 切换到当前文件的尾部
    [mul5 appendFormat:@"%@ %d, %.2f", @"def", 5, 3.14159];
    
    //在指定位置插入字符串
    [mul5 insertString:@"kkkkkk" atIndex:2];
    //修改字符串
    [mul5 setString:@"def"];
    
    //删除指定范围的字符串
    [mul5 deleteCharactersInRange:NSMakeRange(1, 1)];


}
@end
