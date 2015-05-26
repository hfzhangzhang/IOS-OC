//
//  BlockDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/2/2.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "BlockDemo.h"
/*
 1.如何定义block变量int (^sumblock)(int,int)；void(^myblock)()。
 2.如何用block封装代码
 ^{NSLog(@"______________");};
 ^(int a,int b){
 return a+b;
 };
 3.利用typedef定义block类型 typedef int(^Myblock)(int,int);
 
 4.block内部可以访问外面的变量，但默认不可以修改外面的变量，可以给布局变量加上__block，这样就可以在内部修改；
 */

@implementation BlockDemo
//没有返回值和形参
void test0()
{
    //block用来保存一段代码,标志是^,和函数很像,可以保存代码，有返回值和形参；
    //定义Block变量,如果没有参数可以吗省略（）；
    //    void(^myblock)()=^()
    //    {
    //        NSLog(@"______________");
    //    };
    //
    
    void(^myblocks)(void)=NULL;
    myblocks=^(void){
        NSLog(@"!!!!!!");
    };
    myblocks();
    
    void(^myblock)()=^
    {
        NSLog(@"______________");
    };
    //利用block变量调用block
    myblock();
}
//有返回值，🈶形参
void test1()
{
    //定义一个语法块对象，语法块对象是以^开始，后面可以以()方式添加有参数，参数类型与块对象定义的参数类型要一致
    int (^sumblock)(int,int)=^(int a,int b){
        return a+b;
    };
    int c=sumblock(10,5);
    void (^lineBlock)(int)=^(int n){
        for (int i=0; i<n ; i++) {
            NSLog(@"_______________");
        }
    };
    lineBlock(5);
}

typedef  int (^Myblock)(int,int);

void test2()
{
    /*
     int (^sumblock)(int,int)=^(int a,int b){
     return a+b;
     };
     int (^minusBlock)(int,int);
     minusBlock=^(int a,int b){
     return a-b;
     };
     */
    
    Myblock minusblock=^(int a,int b){
        return a-b;
    };
    
    Myblock sumBlock;
    sumBlock=^(int a,int b){
        return a+b;
    };
    
    int (^fun)(int a, int b) ;
    //声明块对象变量
    __block int m = 10 ;
    //块对象函数,有生命周期,块离开其本身命周期范围，块对象会被释放掉
    fun = ^int (int a, int b)
    {
        //块对象中可以使用局部或者全局变量
        NSLog(@"a = %d",a) ;
        //对于不属于块内部的普通变量不能进行赋值
        m = 20 ;
        return 2*(a+b) ;
    };
    
}

//-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    //启动一个动画对象
//    [UIView animateWithDuration:3 animations:^
//     //动画的变化的数据
//     {
//         UIView* view = [self.view viewWithTag:101] ;
//         //结束位置
//         view.frame = CGRectMake(100, 300, 100, 100) ;
//         
//     }
//     //当动画结束之后,调用动画后期处理代码端
//                     completion:^(BOOL finished)
//     {
//         NSLog(@"333 anim stop") ;
//     }] ;
//}

@end
