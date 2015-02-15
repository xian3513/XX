//
//  Second.h
//  XX
//
//  Created by kt on 15/2/9.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Base.h"

@interface Second : Base

- (NSInteger)sectionOfView;

- (NSInteger)heightOfCell:(NSInteger)row;

- (NSInteger)numberOfRows:(NSInteger)section;

- (NSString *)textOfrow:(NSInteger)row section:(NSInteger)section;

- (NSString *)titleOfSection:(NSInteger)section;

@end
