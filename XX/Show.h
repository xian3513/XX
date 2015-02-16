//
//  Show.h
//  XX
//
//  Created by kt on 15/2/16.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum {
    ShowTypeFirst,
    ShowTypeSecond,
    ShowTypeThird
} ShowType;
@interface Show : NSObject<UITableViewDataSource,UITableViewDelegate>

- (id)initWithType:(ShowType)type;
@end
