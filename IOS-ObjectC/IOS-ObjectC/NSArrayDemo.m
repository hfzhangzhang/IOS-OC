//
//  NSArrayDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/26.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSArrayDemo.h"

@implementation NSArrayDemo
-(void)array
{
     /*_________________________不可变数组(NSArray)_______________________________*/
    
    //不可变数组一旦创建，它的元素的个数和内容就不能被修改
    //arr数组中，存放的是对象指针。对象指针不能修改。指针所指向的对象能否被修改看对象本身,在数组中，元素可以是任意的对象指针.
    //nil用来修饰对象指针。nil在数组中是一个标志，代表类数组结束。
    //打印数组时，会给数组中的每个对象发送description的消息
    NSArray *array = [[NSArray alloc] initWithObjects:@"one",@"two", @"three", nil];
    NSArray *arr = @[@"one", @"two", @"three"];
    
    NSString *s1 = @"zhangsan";
    NSString *s2 = @"lisi";
    NSString *s3 = @"wangwu";
    NSArray *array1 = [[NSArray alloc] initWithObjects:s1,s2,s3, nil];
    NSLog(@"%@",array1);
    
    NSArray *array2 = [NSArray arrayWithObjects:s1,s2,s3, nil];
    NSArray *array3 = [NSArray arrayWithObject:s1];
    NSArray *array4 = [NSArray arrayWithArray:array1];
    
    //---------------------2.通过下标取元素--------------------------//
    NSString *str1 = [array4 objectAtIndex:0];
    NSLog(@"str1 = %@",str1);
    
    //---------------------3.数组的元素个数--------------------------//
    NSUInteger count0 = [array4 count];
    NSUInteger count1 = array4.count;  //点语法等价于-> [array4 count];//注意count是不能带参数
    NSLog(@"count1 = %ld",count1);
    
    //---------------------4.判断是否包含某个对象--------------------------//
    BOOL isContains = [array4 containsObject:@"zhangsan"];
    NSLog(@"isContains: %d",isContains);
    
    //---------------------5.对象在数组中的索引位置--------------------------//
    NSUInteger index = [array4 indexOfObject:@"wangwu"];
    NSLog(@"index = %ld",index);
    
    //---------------------6.链接数组中的字符串--------------------------//
    //注意：数组中的元素必须都是字符串，才可以使用此方法
    NSString *joinString = [array4 componentsJoinedByString:@","];
    NSLog(@"join:%@",joinString); //zhangsan,lisi,wangwu
    
    //---------------------7.访问最后一个元素--------------------------//
    NSString *last = [array4 lastObject]; //等价于点语法：array4.lastObject;
    NSLog(@"last:%@",last);
    
    //---------------------8.在原来的数组上追加对象--------------------------//
    //追加之后，创建了一个新的数组
    NSArray *array5 = [array4 arrayByAddingObject:@"zhaoliu"];
    NSLog(@"array5:%@",array5);
    
    /*
     注意：1.数组中不能存放基本数据类型，只能存放对象
     2.数组越界
     */
    //    NSArray *array6 = [NSArray arrayWithObject:100];  //错误，基本数据类型不能存放到数组中
    
    int idx = 4;
    if (idx < array5.count) {  //严谨的写法，只有下标小于元素个数时，才可以使用下标取元素
        [array5 objectAtIndex:idx];
    }
    
    
    //---------------xcode4.4以后对数组的创建和访问，语法上做了优化---------------//
    //1.创建一个数组
    NSArray *array7 = @[s1,s2,s3];
    //等价于NSArray *array2 = [NSArray arrayWithObjects:s1,s2,s3, nil];
    NSLog(@"array7=%@",array7);
    
    NSString *str = array7[0];
    NSLog(@"array7[0] = %@",str);
    
    
    /*_________________________可变数组(NSMutableArray)_______________________________*/
    
    NSString *t1 = @"zhangsan";
    NSString *t2 = @"lisi";
    NSString *t3 = @"wangwu";
    
    //---------------------1.创建可变数组--------------------------//
    NSMutableArray *marray1 = [[NSMutableArray alloc] initWithObjects:t1,t2,t3, nil];
    
    //创建数组时，开辟3个空间来存储元素，当存储的元素超过3个时，系统会自动增大此数组的空间
    NSMutableArray *marray2 = [[NSMutableArray alloc] initWithCapacity:3];
    NSMutableArray *marray3 = [NSMutableArray arrayWithCapacity:3];
    
    //新语法创建的是不可变数组
    //    NSMutableArray *marray4 = @[s1,s2,s3];  //错误
    
    //---------------------2.添加元素--------------------------//
    [marray2 addObject:s1];
    [marray2 addObject:s2];
    [marray2 addObject:s3];
    
    //将marray2中所有的元素全都添加到marray3中
    //[marray3 addObjectsFromArray:marray2];
    
    //这是marray2添加到marray3中，marray3则是个二维数组
    //[marray3 addObject:marray2];
    
    
    //---------------------3.插入元素--------------------------//
    [marray2 insertObject:@"赵六" atIndex:0];
    NSLog(@"marray2 = %@",marray2);
    //    [marray2 insertObject:@"zhaoliu" atIndex:0];  //错误，数组越界
    
    //---------------------4.替换元素--------------------------//
    [marray2 replaceObjectAtIndex:1 withObject:@"zhangfei"];
    NSLog(@"marray2 = %@",marray2);
    
    //---------------------5.互换两个元素的位置--------------------------//
    [marray2 exchangeObjectAtIndex:3 withObjectAtIndex:2];
    NSLog(@"marray2 = %@",marray2);
    
    //---------------------6.将另外一个数组的所有元素添加到当前数组--------------------------//
    [marray3 addObjectsFromArray:marray2];
    
    //---------------------7.删除元素--------------------------//
    /*
     //7.1根据下标删除
     [marray2 removeObjectAtIndex:0];
     NSLog(@"marray2 = %@",marray2);
     
     //7.2根据对象删除
     [marray2 removeObject:@"zhangfei"];
     NSLog(@"marray2 = %@",marray2);
     
     //7.3删除最后一个元素
     [marray2 removeLastObject];
     NSLog(@"marray2 = %@",marray2);
     
     //7.4删除所有元素
     [marray2 removeAllObjects];
     NSLog(@"marray2 = %@",marray2);
     
     //7.5删除范围内的指定元素
     [marray2 removeObject:@"one" inRange:NSMakeRange(0, 3)];

     */
    
    
    
    //---------------------遍历数组--------------------------//
    //1.普通遍历
    /*
     for (int i=0; i<marray2.count; i++) {
     NSString *str = [marray2 objectAtIndex:i];
     // NSString *str2 = marray2[i];
     NSLog(@"%@",str);
     }
     */
    
    //2.快速遍历
    for (NSString *s in marray2) {
        NSLog(@"%@",s);
    }
    
    //3.根据对象取出对象在数组中的索引
    NSUInteger index1 = [arr indexOfObject:@"two"];
    NSLog(@"%lu", index1);
    
    /*--------------字符串分割与组合----------------*/
    NSString *str3 = @"我 是 中 国 人";
    
    //用指定字符串分割str1，分割的结果存在一个数组中。
    NSArray *arr5 = [str3 componentsSeparatedByString:@" "];
    NSLog(@"%@",arr5);
    
    //set 集合
    //NSCharacterSet oc字符集
    //[NSCharacterSet characterSetWithCharactersInString:@" #"]这时字符集类的类方法，通过提取指定字符串（@" #"）中的字符来创建字符集合。当前字符集中有字符' ' 和字符'＃'
    NSArray *arr6 = [str1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" #"]];
    
    NSLog(@"%@", arr6);
    
    //字符串组合
    NSString *str9 = [arr6 componentsJoinedByString:@" "];
    
    NSLog(@"%@",str9);
    
    
    
    NSArray *arr0 = @[@"one",  @"two", @"three"];
    //  1.遍历法
    for (NSUInteger i = 0;i < [arr0 count]; i++)
    {
        NSLog(@"%@", arr[i]);
    }
    
    //2.枚举法(用的比较少)
    //objectEnumerator方法为arr数组创建一个NSEnumerator对象
    NSEnumerator *en = [arr objectEnumerator];
    id obj;
    //NSString *str1;
    //NSEnumerator的nextObject每次会从数组中取出一个元素。
    //        while (str1 = [en nextObject])
    while (obj = [en nextObject])
    {
        NSLog(@"%@", obj);
    }
    
    //3.快速枚举法（最重要）
    for (id obj  in arr)
    {
        NSLog(@"%@", obj);
    }
    
    //4.代码块(在代码块讲)

    
    
    //——————————————————数组的排序
    NSArray *array0 = @[@"100",@"45",@"233",@"11"];
    
    //使用函数指针进行排序
    //sortedArrayUsingFunction: 排序
    // NSArray *resultArray = [array sortedArrayUsingFunction:sortedArray context:@"demo1"];
    // NSLog(@"result:%@",resultArray);
    
    
//    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@"one", @"two", @"three", @"four", nil];
//    
//    //        NSLog(@"%@", arr);
//    //对可变数组自身进行排序
//    //数组中可以存放的数据种类很多（字符串，自己写的类的对象），如果我们需要对数据中的数据进行排序，则需要提供一个方法，这个方法可以比较你存入的数据的大小。
//    //我们使用下面方法排序，选择器所代表的比较数据元素的方法声明应该如下 （- (BOOL)方法名: (元素类型 *)参数名 ），方法实现应该是比较两个元素的大小。
//    [arr sortUsingSelector:@selector(compare:)];//实现的是从小到大排序
//    
//    //以下方法返回一个排序好的数组，数组的内容是可变数组中的排序好的内容。
//    NSArray *arr1 =  [arr sortedArrayUsingSelector:@selector(compare:)];
//    
//    //        NSLog(@"----------\n%@", arr);
//    //@selector(isBiggerThanString:)  1001
//    //        [arr sortUsingMySelector:1001];
//    
//    //通过调用我们类别提供的排序方法对可变数组进行排序
//    //@selector(isBiggerThanString:)传入的是通过类别提供的比较字符串大小的方法。
//    [arr sortUsingMySelector:@selector(isBiggerThanString:)];
//    NSLog(@"%@", arr);
//
//    - (void)sortUsingMySelector:(SEL)comparator//1001
//    {
//        for (NSUInteger i = 0; i <  [self count]; i++) {
//            for (NSUInteger j = 0; j < [self count] - 1 - i; j++) {
//                NSString *str =[self objectAtIndex:j];
//                NSString *str1 = [self objectAtIndex:j + 1];
//                //判断选择器所代表的方法的执行结构是否为YES，如果为YES，表示str 比 str1大。所以在数组中交换两个字符串的位置。
//                if ([str performSelector:comparator withObject:str1]) {
//                    
//                    //            if ([str isBiggerThanString:str1]) {
//                    [self exchangeObjectAtIndex:j withObjectAtIndex: j + 1];
//                }
//            }
//        }
//    }
//    - (BOOL)isBiggerThanString:(NSString *)str
//    {
//        //如果self比str大，COMPARE方法返回1.
//        /*    NSOrderedAscending = -1L,
//           NSOrderedSame = 0
//            NSOrderedDescending = 1*/
//        NSComparisonResult res = [self compare:str];
//        return res > 0 ;//从小到大排序
//        //    return res < 0;//从大到小排序
//    }


    
    //使用block进行排序
    [array0 sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSString *s1 = obj1;
        NSString *s2 = obj2;
        //[s1 compare:<#(NSString *)#>];  比较的是字符中的ASIC码，“100”的ASIC码不一定比"99"大
        int v1 = [s1 intValue];
        int v2 = [s2 intValue];
        if (v1 > v2) {
            //返回降序
            return NSOrderedDescending;
        } else if(v1 < v2) {
            //返回升序
            return NSOrderedAscending;
        }
        return NSOrderedSame;
    }];
    
    

    

}






//#pragma mark 数组排序1
//void arraySort1() {
//    NSArray *array = [NSArray arrayWithObjects:@"2", @"3", @"1", @"4", nil ];
//    
//    // 返回一个排好序的数组，原来数组的元素顺序不会改变
//    // 指定元素的比较方法：compare:
//    NSArray *array2 = [array sortedArrayUsingSelector:@selector(compare:)];
//    NSLog(@"array2:%@", array2);
//}
//
//#pragma mark 数组排序2
//void arraySort2() {
//    Student *stu1 = [Student studentWithFirstname:@"MingJie" lastname:@"Li"];
//    Student *stu2 = [Student studentWithFirstname:@"LongHu" lastname:@"Huang"];
//    Student *stu3 = [Student studentWithFirstname:@"LianJie" lastname:@"Li"];
//    Student *stu4 = [Student studentWithFirstname:@"Jian" lastname:@"Xiao"];
//    NSArray *array = [NSArray arrayWithObjects:stu1,stu2,stu3, stu4, nil nil];
//    // 指定排序的比较方法
//    NSArray *array2 = [array sortedArrayUsingSelector:@selector(compareStudent:)];
//    NSLog(@"array2:%@", array2);
//}
//- (NSComparisonResult)compareStudent:(Student *)stu {
//    // 先按照姓排序
//    NSComparisonResult result = [self.lastname compare:stu.lastname];
//    // 如果有相同的姓，就比较名字
//    if (result == NSOrderedSame) {
//        result = [self.firstname compare:stu.firstname];
//    }
//    return result;
//}
//
//#pragma mark 数组排序3
//void arraySort3() {
//    Student *stu1 = [Student studentWithFirstname:@"MingJie" lastname:@"Li"];
//    Student *stu2 = [Student studentWithFirstname:@"LongHu" lastname:@"Huang"];
//    Student *stu3 = [Student studentWithFirstname:@"LianJie" lastname:@"Li"];
//    Student *stu4 = [Student studentWithFirstname:@"Jian" lastname:@"Xiao"];
//    NSArray *array = [NSArray arrayWithObjects:stu1,stu2,stu3, stu4, nil nil];
//    
//    // 利用block进行排序
//    NSArray *array2 = [array sortedArrayUsingComparator:
//                       ^NSComparisonResult(Student *obj1, Student *obj2) {
//                           // 先按照姓排序
//                           NSComparisonResult result = [obj1.lastname compare:obj2.lastname];
//                           // 如果有相同的姓，就比较名字
//                           if (result == NSOrderedSame) {
//                               result = [obj1.firstname compare:obj2.firstname];
//                           }
//                           
//                           return result;
//                       }];
//    
//    NSLog(@"array2:%@", array2);
//}
//
//#pragma mark 数组排序4-高级排序
//void arraySort4() {
//    Student *stu1 = [Student studentWithFirstname:@"MingJie" lastname:@"Li" bookName:@"book1"];
//    Student *stu2 = [Student studentWithFirstname:@"LongHu" lastname:@"Huang" bookName:@"book2"];
//    Student *stu3 = [Student studentWithFirstname:@"LianJie" lastname:@"Li" bookName:@"book2"];
//    Student *stu4 = [Student studentWithFirstname:@"Jian" lastname:@"Xiao" bookName:@"book1"];
//    NSArray *array = [NSArray arrayWithObjects:stu1,stu2,stu3, stu4, nil nil];
//    
//    // 1.先按照书名进行排序
//    // 这里的key写的是@property的名称
//    NSSortDescriptor *bookNameDesc = [NSSortDescriptor sortDescriptorWithKey:@"book.name" ascending:YES];
//    // 2.再按照姓进行排序
//    NSSortDescriptor *lastnameDesc = [NSSortDescriptor sortDescriptorWithKey:@"lastname" ascending:YES];
//    // 3.再按照名进行排序
//    NSSortDescriptor *firstnameDesc = [NSSortDescriptor sortDescriptorWithKey:@"firstname" ascending:YES];
//    // 按顺序添加排序描述器
//    NSArray *descs = [NSArray arrayWithObjects:bookNameDesc, lastnameDesc, firstnameDesc, nil nil];
//    
//    NSArray *array2 = [array sortedArrayUsingDescriptors:descs];  
//    
//    NSLog(@"array2:%@", array2);  
//}
//





@end
