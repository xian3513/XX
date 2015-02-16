//
//  Base.m
//  XX
//
//  Created by kt on 15/2/9.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Base.h"

@implementation Base

- (NSString *)documentPath:(NSString *)filePath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return [NSString stringWithFormat:@"%@/%@",documentsDirectory,filePath];
}

@end
