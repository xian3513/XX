//
//  Third.m
//  XX
//
//  Created by kt on 15/2/9.
//  Copyright (c) 2015年 kt. All rights reserved.
//

#import "Third.h"

@implementation Third {
    //NSMutableArray *data;
    NSMutableArray *sequence;
    NSMutableArray *recordClicknumber;
    NSMutableDictionary *data;
}

- (Third *)init {
    if (self = [super init]) {
        NSMutableArray *keys = [[NSMutableArray alloc]initWithCapacity:0];
        for(int i=5;i>0;i--) {
            [keys addObject:[NSNumber numberWithInteger:i]];
        }
        data = [[NSMutableDictionary alloc]initWithObjects:@[@"a",@"b",@"c",@"d",@"e"] forKeys:keys];
        sequence = [[NSMutableArray alloc]initWithCapacity:data.count];
        recordClicknumber = [[NSMutableArray alloc]initWithCapacity:data.count];
        
    }
    return self;
}

- (CGFloat)heightOfCell:(NSInteger *)row {
    if (row == 0) {
        return 120.0f;
    } else {
        return 30.0f;
    }
}
- (NSInteger)numberOfRows {
    NSArray *key = data.allKeys;
    NSLog(@"keys %d",key.count);
    return key.count;
}

- (NSString *)textOfrow:(NSInteger)row {
    NSArray *key = [data allKeys];
    return [data objectForKey:[key objectAtIndex:row]];
}


- (void)recordclicked:(NSInteger)row {
    NSInteger number = [[recordClicknumber objectAtIndex:row]integerValue];
    [recordClicknumber replaceObjectAtIndex:row withObject:[NSNumber numberWithInteger:number++]];
}

- (void)seq:(NSMutableArray *)arr {
    
    for(int i=0;i<arr.count;i++) {
        NSInteger number1 = [[arr objectAtIndex:i]integerValue];
        for(int j=i+1;j<arr.count;j++) {
            NSInteger number2 = [[arr objectAtIndex:j]integerValue];
            if(number2>number1) {
                [arr exchangeObjectAtIndex:i withObjectAtIndex:j];
                number1 = number2;
            }
        }
    }
    NSLog(@"%@",arr);
}
@end
