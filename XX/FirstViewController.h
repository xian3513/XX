//
//  FirstViewController.h
//  XX
//
//  Created by kt on 15/2/6.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UITableViewDataSource,UITableViewDelegate> {
IBOutlet UIView *selectView;
}
- (IBAction)selectPlate:(UIButton *)sender;
@end
