//
//  main.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/19.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//



#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
     //@后面接关键字，表示了这是oc的关键字
    @autoreleasepool {//这是一个自动释放池，和内存管理相关。
        NSLog(@"Hello, World!");

    }
    return 0;
}


///*__________________________捕捉异常_____________________________*/
////创建一个空数组
//NSArray *arr = [NSArray array];
//
//@try {  //有可能出异常的代码块
//    //数组越界异常
//    [arr objectAtIndex:5];
//}
//@catch (NSException *exception) {
//    //如果捕捉到错误，则会执行此处的代码
//    NSLog(@"错误：%@",exception);
//}
//@finally {  //@finally是可选的
//    //不管有没有捕捉到异常，此处代码都会执行
//    NSLog(@"@finally");
//}
