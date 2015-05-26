//
//  Person.h
//  Day1_类的初认识
//
//  Created by qianfeng on 14-7-21.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>


//头文件，和c一样都是.h
//源文件oc是.m ,c是.c   .m的含义 m是message（消息）

//import是导入的意思
//import和include的区别：import导入头文件的时候，会自动检查是否已经导入，如果已经导入，则不会再次导入。OC同样能够使用c的文件，也能使用include来包含头文件，不建议用include

// c防止头文件重复包含
//          #ifndef __HEAD__H__
//          #define __HEAD__H__
//          #endif
//我们需要用谁的东西，就需要包含谁的头文件，" "和< >的区别


//头文件的导入规则，应该在影响代码最少的位置进行导入（应该在这个文件作用范围最窄的地方进行导入）

//类前置声明，就是告诉编译器，你知道这是一个类就可以了，在你真正使用我的时候，你就能知道我到底是什么。
@class Road;


//冒号表示继承关系，前者继承自后者，前者能使用后者的东西（属性和方法）
//@interface 类名 : 父类

//@end//类的声明结束


//@interface是oc中用来声明类的关键字，interface是接口的意思
//类的声明是用来暴露类给外部使用的接口
//类名的命名规范:首字母大写，后面的每个单词的首字母大写
//类是用来封装数据和方法的模型
@interface Person : NSObject
{
    //字段（属性（oc中属性有特殊用途，不这样称呼），成员变量，实例变量）
    //oc中字段命名规范：首单词小写，后面的单词首字母大写,习惯在首单词前添加'_'。
    char _name[20];
    //字段必须写在{}之间
    //共有的。public修饰的字段，在程序的任何位置，都可以通过对象去访问。
@public
    int _age;
    //受保护的。在类内部以及子类中可以直接使用，在类外不能直接访问（使用）
    //@protected是默认的访问权限
@protected
    int _y;
    //私有。在类内部可以直接使用，在子类，以及类的外面不能直接使用
    //私有的或者受保护，在类外不能直接使用，只能通过getter或者setter方法来间接使用。
    //将我们的字段设置为protected访问权限，通过封装方法来操作数据，提高数据的安全性。
@private
    int _z;
    //NSString 使一个类，是oc字符串的类
    //由Person创建的对象，它包含一个对象指针_home，这个对象指针指向一个字符串对象
    //在oc中，一个类如果需要包含另一个对象，我们用另一个对象的指针来作为当前对象的数据成员
    NSString *_home;
    
}

//oc中成员方法声明在{}之后
//成员方法在oc中常叫（消息）
//void print1(void);
//函数名（方法名）print
//不带参数的方法声明
// -/+ (返回值)方法名；
- (void)print;


//在ios程序，在面向对象的程序当中，数据成员不应该在类的外面直接使用，而应该通过getter方法和setter方法间接使用

//访问数据的方法
//getter方法
// － (返回数据类型)
//getter方法不应该写成getName；因为在oc中get有特殊的用途（用到get 肯定带一个参数，这个参数应该是一个指针，这个指针用来保存方法中传出的数据）
- (char *)name;

//setter方法
//oc带一个参数的方法
//- (void)setName:(参数的数据类型)参数名
- (void)setName:(char *)name;






//NS是NEXT STEP的缩写，NeXT, cocoa
//nslog的使用和printf完全一样，除了oc里面添加的特性以外
//nslog和printf相比，会添加日期戳，时间戳，自动换行等
//我们写代码时，不能使用NS前缀
//@"Hello, World!"是oc的字符串，它存储在数据区，不管我们使用多少次，它代表的是同一个字符串（和c字符串一样）
//nslog只能用来输出oc字符串
//nslog可以将c语言printf中能用到的任何数据，格式化到我们oc字符串中
//％@是一个格式化输出符， 专门用来格式化oc字符串

//类的使用
//[Person alloc]这个表达式会从堆上分配一段内存空间，把这段内存空间的首地址赋值给xiaoming这个指针变量
//对象存在于堆上，xiaoming只是一个对象指针
//堆上面的内存空间是匿名空间，我们没办法直接使用，所以我们通过指针来间接使用
//xiaoming一旦创建，它就拥有自己的数据成员可以访问成员方法
//[receiver 方法]方法调用
//Person *xiaoming = [Person alloc];
//xiaozhang 和xiaoming他们有自己独立的内存空间，这段内存空间里有自己独立成员变量（字段）
//Person *xiaozhang = [Person alloc];
//[xiaozhang print];
//[对象名称 －成员方法]
//[xiaoming print];
//[xiaoming setName:"xiaoming"];











@end
