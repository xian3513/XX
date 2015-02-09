//
//  Third.m
//  XX
//
//  Created by kt on 15/2/9.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Third.h"

@implementation Third {
    NSMutableArray *data;
}

- (Third *)init {
    if (self = [super init]) {
        data = [[NSMutableArray alloc]initWithObjects:@"",@"",@"",@"",@"",@"", nil];
    }
    return self;
}

- (NSInteger)heightOfCell:(NSIndexPath *)indexPath {
    return 10;
}
- (NSInteger)numberOfRows {
    return data.count;
}

- (NSString *)textOfrow:(NSInteger)row {
    return [data objectAtIndex:row];
}
@end
