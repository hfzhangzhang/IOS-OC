//
//  NSString+StringPrint.h
//  Day6_类别
//
//  Created by qianfeng on 14-7-28.
//  Copyright (c) 2014年 cocoa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
//需要使用类别，就必须添加类别的头文件

//为某个类（官方类库中得类，第三方提供的类，某些自己没有源代码的类）添加方法的这种方式，我们叫做类别（category）
//类别最主要的作用：为某个类添加方法。

//@interface 要添加方法的类的类名 ( 类别名 )
//@end

//使用类别的注意事项
//1. 在类别中不能添加成员变量（字段）
//2. 用类别来为类添加方法，这些类可以是任意类。（添加方法时，我们不应该去添加与官方类库中重名的方法）
//3. 有些官方类库中类的方法，哪怕你类别中用重名的方法实现，调用的还是原类的方法。

@interface NSString (StringPrint)
//注意，print方法是为NSString添加的。它是NSString的一个实例方法。
- (void)print;
@end
//用类别给某个类添加了一个方法，这个方法，在子类中同样可以使用
//NSMutableString *str = [NSMutableString stringWithString:@"i am mutable"];
//[str print];


//私有方法：在接口中未声明的方法。（注意，如果这个方法在父类中有声明）,私有方法在类外不能直接调用
//通过类别为私有方法添加前向声明
//在类别中我们只需要添加私有方法的声明，不需要实现。
@interface NSString (test)
- (void)test;
@end
//可以通过类别使用私有方法



//当类中的方法实现有问题，我们可以通过类别重新实现一个相同的方法来修正原方法的BUG或重写方法。
//因为类别中的方法比原类的方法有更高的优先级，所以在类别中方法和原类中得方法重名时，会调用类别中共的方法。
//当多个类别中出现同名的方法，很可能引起编译错误，我们不应该在多个类别中添加同名的方法
//@interface Dog (fixBug)
//- (void)count:(int)number;
//@end
//
//@implementation Dog (fixBug)
//- (void)count:(int)number
//{
//    for (int i = 0; i < number; i++) {
//        NSLog(@"%d", i);
//    }
//}
//@end

