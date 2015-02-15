//
//  Third.h
//  XX
//
//  Created by kt on 15/2/9.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Base.h"

@interface Third : Base

- (CGFloat)heightOfCell:(NSInteger)row;

- (NSInteger)numberOfRows;

- (NSString *)textOfrow:(NSInteger)row;

- (void)recordclicked:(NSInteger)row;
@end
