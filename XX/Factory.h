//
//  Factory.h
//  XX
//
//  Created by kt on 15/2/15.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface Factory : NSObject

+ (void)factoryForFirstViewController:(UIView *)modelView;

+ (UITextField *)factoryForSecondViewController:(UIView *)modelView atIndex:(NSInteger)index WithItemName:(NSString *)name;

@end
