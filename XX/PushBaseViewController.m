//
//  PushBaseViewController.m
//  XX
//
//  Created by kt on 15/2/15.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "PushBaseViewController.h"

@interface PushBaseViewController ()

@end

@implementation PushBaseViewController

- (id)init {
    if(self = [super init]) {
     navheight = 66;
        distance = 5;
           }
    return self;
}

- (void)setScrollContentSize:(CGSize)scrollContentSize {
    scroll.contentSize = scrollContentSize;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
