//
//  Second.m
//  XX
//
//  Created by kt on 15/2/9.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Second.h"

@implementation Second {
    NSMutableArray *data;
    NSInteger cellHeight;
    NSArray *titles;
    NSArray *contentTitles;
}

- (Base *)init:(NSInteger)count {
    if(self = [super init]) {
        data = [[NSMutableArray alloc]initWithCapacity:count];
        titles = [[NSArray alloc]initWithObjects:@"1",@"2",@"3", nil];
        contentTitles = @[@[@""],@[@""],@[@""]];
        cellHeight = 100;
        
        if(!(count == titles.count && count == contentTitles.count)) {
            NSLog(@"%s , init failed",__FUNCTION__);
        }
        
    }
    return self;
}

- (Second *)init {
    if(self = [super init]) {
        NSInteger count = 3;
        data = [[NSMutableArray alloc]initWithCapacity:count];
        titles = [[NSArray alloc]initWithObjects:@"1",@"2",@"3", nil];
        contentTitles = @[@[@"fang",@"er",@"zhao"],@[@"d"],@[@"e",@"e",@"e"]];
        cellHeight = 100;
        if(!(count == titles.count && count == contentTitles.count)) {
            NSLog(@"%s , init failed",__FUNCTION__);
        }
    }
    return self;
}

- (NSInteger)sectionOfView {
    return titles.count;
}
- (NSInteger)numberOfRows:(NSInteger)section {
    NSArray *content = [contentTitles objectAtIndex:section];
    return content.count;
}

- (NSInteger)heightOfCell:(NSInteger)tow {
    return cellHeight;
}

- (NSString *)textOfrow:(NSInteger)row section:(NSInteger)section{
    NSArray *context = [contentTitles objectAtIndex:section];
    return [context objectAtIndex:row];
}

- (NSString *)titleOfSection:(NSInteger)section {
    return [titles objectAtIndex:section];
}
@end
