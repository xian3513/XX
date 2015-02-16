//
//  ShowViewController.m
//  XX
//
//  Created by kt on 15/2/16.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "ShowViewController.h"
#import "Show.h"
@interface ShowViewController ()

@end

@implementation ShowViewController {
    Show *show;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)initData {
    show = [[Show alloc]initWithType:ShowTypeFirst];
    UITableView *tab = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 300) style:UITableViewStylePlain];
    tab.delegate = show;
    tab.dataSource = show;
    [self.view addSubview:tab];
    self.view.backgroundColor = [UIColor whiteColor];
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
