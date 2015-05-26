//
//  SELdemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/30.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "SELdemo.h"

@implementation SELdemo
-(void)Seldemo
{
//    NSString *str = @"aaa";
//    //  1001    length
//    //  1002    setHeight;
//    //        [str length];
//    //        objc_sendMsg(str, 1001);
//    ManInBlack *xiaoming = [[ManInBlack alloc] init];
//    
//    //        //选择器是变量类型
//    //        SEL sel = @selector(memoryClear);
//    //选择器有点像函数指针，都能代表方法。
//    //选择器变量sel存储的是能唯一代表方法名的标识（1001）。
//    //@selector(方法名)，@selector能取得标识方法名的那个唯一的标识
//    SEL sel = @selector(memoryClear);
//    //        //通过选择器可以直接调用私有方法。(不建议使用)
//    //        [xiaoming performSelector:sel];
//    
//    //通过performSelector方法可以调用选择器所代表的方法。
//    [xiaoming performSelector:@selector(memoryClear)];
//    //通过选择器调用带一个参数的方法，参数写在withObject后
//    [xiaoming performSelector:@selector(setName:) withObject:@"smiss"];
//    
//    //OC通过选择器来调用带参数的方法最多只能带两个
//    //        [xiaoming performSelector:<#(SEL)#> withObject:<#(id)#> withObject:<#(id)#>];
//    
//    //如果需要通过选择器调用带多个参数的方法，我们可以封装参数
//    
//    Arguments *argu = [[Arguments alloc] init];
//    argu->_name = @"SMISS";
//    argu->_age = 24;
//    argu->_clothes = @"红色大衣";
//    
//    [xiaoming performSelector:@selector(setArg:) withObject:argu];
//
//
//    - (void)setArg:(Arguments *)arg
//    {
//        [self setName:arg->_name andAge:arg->_age andClothes:arg->_clothes];
//    }
//
    
//输入类和方法
//    char buf1[20];
//    char buf2[20];
//    
//    NSLog(@"请输入类名和方法名:");
//    scanf("%s %s", buf1, buf2);
//    
//    NSString *clsName = [NSString stringWithUTF8String:buf1];
//    Class cls = NSClassFromString(clsName);
//    
//    NSString *methName = [NSString stringWithUTF8String:buf2];
//    
//    SEL sel = NSSelectorFromString(methName);
//    //类方法都是类对象来调用。
//    //由于不知道cls是哪个类的类对象。所以它创建的对象我们没法确定，所以我们用ID泛型指针来接收它创建的对象。
//    id obj = [[cls alloc] init];
//    if ([obj respondsToSelector:sel]) {
//        [obj performSelector:sel];
//    }
//    else
//        NSLog(@"%@类不能响应方法%@", clsName, methName);
    
    
//    SEL sel = @selector(run);
//    @selector() 指令让你可以直接引用编译后的选择器而不是方法全名
//    //这个方法用于编译时就能确定调用的方法
//    
//    SEL sel = NSSelectorFromString(@"run");
//    //这个方法用于运行时确定调用的方法

//    //判断wearNeat方法是否在Student类中定义,如果定义了，才调用
//    if ([stu respondsToSelector:@selector(wearNeat)]) {
//        [stu wearNeat];
//    }


}
@end
