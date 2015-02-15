//
//  Factory.m
//  XX
//
//  Created by kt on 15/2/15.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Factory.h"

@implementation Factory {
   
}

+ (void)factoryForFirstViewController:(UIView *)modelView {

}
+ (void)factoryForSecondViewController:(UIView *)modelView atIndex:(NSInteger)index WithItemName:(NSString *)name{
    NSInteger x = 5;
    NSInteger labWidth = 80;
    NSInteger labHeight = 30;
    NSInteger y = 5+labHeight*index;
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(x, y, labWidth, labHeight)];
    lab.text = name;
    
    [modelView addSubview:lab];
}
@end

