//
//  RecruitmentViewController.m
//  XX
//
//  Created by kt on 15/2/15.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "RecruitmentViewController.h"

@interface RecruitmentViewController ()

@end

@implementation RecruitmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    // Do any additional setup after loading the view.
}

- (id)init {
    if(self = [super init]) {
    
    }
    return self;
}
- (void)initData {
    if(!scroll) {
        self.view.backgroundColor = [UIColor whiteColor];
        scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(distance, navheight, self.view.frame.size.width-distance*2, 350)];
        scroll.contentSize = CGSizeMake(300, 350-navheight-10);
        scroll.contentInset = UIEdgeInsetsMake(-66, 0, 0, 0);
        scroll.layer.borderWidth = 1;
        scroll.bounces = NO;
        scroll.showsHorizontalScrollIndicator = NO;
        scroll.showsVerticalScrollIndicator = YES;
        scroll.layer.borderColor = [UIColor blackColor].CGColor;
        [self.view addSubview:scroll];
        [Factory factoryForSecondViewController:scroll atIndex:0 WithItemName:@"职位名称"];
        [Factory factoryForSecondViewController:scroll atIndex:1 WithItemName:@"薪资水平"];
        [Factory factoryForSecondViewController:scroll atIndex:2 WithItemName:@"工作地址"];
        [Factory factoryForSecondViewController:scroll atIndex:3 WithItemName:@"职位名称"];
        [Factory factoryForSecondViewController:scroll atIndex:4 WithItemName:@"工作年限"];
        [Factory factoryForSecondViewController:scroll atIndex:5 WithItemName:@"任职要求"];
        [Factory factoryForSecondViewController:scroll atIndex:6 WithItemName:@"联系人"];
        
    }
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
