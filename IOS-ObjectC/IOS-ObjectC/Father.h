//
//  Father.h
//  Day7_继承Demo1
//
//  Created by qianfeng on 14-7-29.
//  Copyright (c) 2014年 cocoa. All rights reserved.
//

#import <Foundation/Foundation.h>

//复合:复合是有一个（has a）的概念
//继承:继承是是一个(is a)的概念

//继承： 子类会自动拥有父类的字段属性和方法。 SON继承自FATHER
//派生： 子类不仅能拥有父类的东西，还有自己独有的部分。SON派生于father
//继承和派生指的是同样的事情，只是强调的角度不同。

//父类和子类一些称呼
//    父类（Father class） 超类（super class）
//    子类 (child class)  子类 （sub class）

//                  交通工具类(祖宗类，根类)
//          汽车类                     飞机类         轮船类
//  小汽车类    公共汽车类   越野车类
//BMW BENCHI BYD（子孙类）

//继承的语法
//在OC中只有一个父类
//所有的类都直接或者间接从NSObject继承
//@interface 子类名 : 父类名
//@end

@interface Father : NSObject
{
    int _height;
    int _weight;
    NSString *_name;
}

@property int height;
@property int weight;
@property NSString *name;

- (id)initWithName:(NSString *)name andHeight:(int)height andWeight:(int)weight;
//所有在接口中声明的方法都是公有方法
- (void)run;

- (void)jump;

- (void)show;

@end


//1.为什么创建的SON对象可以给Father类的指针赋值? 可以用父类的指针指向子类的对象。
//oc都是虚方法
//Father *laowang = [[Son alloc] init];
//[laowang run];
//在通过对象指针去调用方法的时候，我们不看指针是什么类型的指针，只看指针所指向的对象。oc都是虚方法，调用方法时不看指针，看对象，对象的地址调用对象的方法；好处：描述不同事物触发相同事件，产生不同效果；
//多态。多态的基础是可以用父类的指针指向子类对象。
//像我们使用父类的指针指向子类的对象，然后调用方法，会自动的根据指针所指向的类型来调用相应的方法，这种情况我们叫多态。同一个接口，不同的实现方式叫做多态，重写是多态的一种
//NSstring,NSArray,NSdictionary,不能被继承。





