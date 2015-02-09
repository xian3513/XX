//
//  Third.h
//  XX
//
//  Created by kt on 15/2/9.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Base.h"

@interface Third : Base

- (NSInteger)heightOfCell:(NSIndexPath *)indexPath;

- (NSInteger)numberOfRows;

- (NSString *)textOfrow:(NSInteger)row;

@end
