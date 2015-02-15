//
//  PushBaseViewController.h
//  XX
//
//  Created by kt on 15/2/15.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Factory.h"
@interface PushBaseViewController : UIViewController {
    NSInteger navheight;
    NSInteger distance;
    UIScrollView *scroll;
}
@property (nonatomic,readwrite) CGSize scrollContentSize;


@end
