//
//  NSScannerDemo.m
//  My－OC
//
//  Created by hfzhangzhang on 15/1/30.
//  Copyright (c) 2015年 hfzhangzhang. All rights reserved.
//

#import "NSScannerDemo.h"

@implementation NSScannerDemo
- (void) scan{
    NSString *str=@"123 456 78 9 aabbbcccdddeeeabc str OK";
    NSScanner *scanner=[NSScanner scannerWithString:str];
    int aint;
    [scanner scanInt:&aint];
    NSLog(@"%d",aint);
    //123
    
    
    NSString *s;
    [scanner scanUpToString:@"str" intoString:&s];
   // ___456 78 9 aabbbcccdddeeeabc

    
    
    
}

@end
