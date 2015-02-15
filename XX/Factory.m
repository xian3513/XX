//
//  Factory.m
//  XX
//
//  Created by kt on 15/2/15.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Factory.h"

@implementation Factory {
    NSInteger lastHeight;
}

+ (void)factoryForFirstViewController:(UIView *)modelView {

}
+ (UITextField *)factoryForSecondViewController:(UIView *)modelView atIndex:(NSInteger)index WithItemName:(NSString *)name{
    
    NSInteger labWidth = ceilf(modelView.frame.size.width/4.1);
     NSInteger fieldWidth = ceilf(modelView.frame.size.width*2.8/4.0);
    NSInteger labHeight = 30;
    NSInteger fieldHeight = labHeight;
    NSInteger labX = 5;
     NSInteger fieldX = labX+labWidth;
    NSInteger y = 20+(20+labHeight)*index;
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(labX, y, labWidth, labHeight)];
    lab.font = [UIFont systemFontOfSize:15];
    lab.text = name;
    
    UITextField *field = [[UITextField alloc]initWithFrame:CGRectMake(fieldX, y, fieldWidth, fieldHeight)];
    field.borderStyle = UITextBorderStyleRoundedRect;
    
     CALayer *lineLayer = [[CALayer alloc]init];
    lineLayer.frame = CGRectMake(labX, y+fieldHeight+10, modelView.frame.size.width-labX*2, 0.5f);
    lineLayer.backgroundColor = [UIColor blackColor].CGColor;
    
    [modelView.layer addSublayer:lineLayer];
    [modelView addSubview:lab];
    [modelView addSubview:field];
    return field;
}

//+ (UITextView *)factoryWithView:(UIView *)modelView atIndex:(NSInteger)index {
//
//}
@end

