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
    NSMutableArray *titleArray;
    NSMutableDictionary *recordClicknumber;
    NSArray *data;
}

- (Third *)init {
    if (self = [super init]) {
        NSMutableArray *keys = [[NSMutableArray alloc]initWithCapacity:0];
        for(int i=4;i>0;i--) {
            [keys addObject:[NSNumber numberWithInteger:i]];
        }
        titleArray = [[NSMutableArray alloc]initWithObjects:@"a",@"b",@"c",@"d", nil];
        data = titleArray;
        recordClicknumber = [[NSMutableDictionary alloc]initWithObjectsAndKeys:[NSNumber numberWithInt:0],titleArray[0],[NSNumber numberWithInt:0],titleArray[1],[NSNumber numberWithInt:0],titleArray[2],[NSNumber numberWithInt:0],titleArray[3], nil];
    }
    return self;
}

- (CGFloat)heightOfCell:(NSInteger )row {
    if (row == 0) {
        return 120.0f;
    } else {
        return 40.0f;
    }
}
- (NSInteger)numberOfRows {
    return titleArray.count+1;
}

- (NSString *)textOfrow:(NSInteger)row {
    if(row == 0) {
        return nil;
    }
    return [titleArray objectAtIndex:row-1];
//    NSArray *key = [data allKeys];
//    return [data objectForKey:[key objectAtIndex:row-1]];
}


- (void)recordclicked:(NSInteger)row {
//    NSMutableArray *arr = [NSMutableArray arrayWithArray:[recordClicknumber allValues]];
//    NSMutableArray *keys = [NSMutableArray arrayWithArray:[recordClicknumber allKeys]];
//    [arr exchangeObjectAtIndex:0 withObjectAtIndex:arr.count-1];
//    [keys exchangeObjectAtIndex:0 withObjectAtIndex:keys.count-1];
//    [recordClicknumber removeObjectForKey:[keys objectAtIndex:row-1]];
//    NSInteger number = [[arr objectAtIndex:row-1] integerValue];
//    
//    [recordClicknumber setObject:[NSNumber numberWithInt:++number] forKey:[keys objectAtIndex:row-1]];
//    NSLog(@"clicked:%@",recordClicknumber);
//    [self seq:[[NSMutableArray alloc] initWithArray:[recordClicknumber allValues]]];
}

- (void)seq:(NSMutableArray *)arr {
    BOOL isSame = NO;
    NSInteger temp = -1;
    for(int i=0;i<arr.count;i++) {
        NSInteger number1 = [[arr objectAtIndex:i]integerValue];
        if(!isSame) {
            isSame = (temp == number1?YES:NO);
            temp = number1;
        }
        
        for(int j=i+1;j<arr.count;j++) {
            NSInteger number2 = [[arr objectAtIndex:j]integerValue];
            if(number2>number1) {
                [arr exchangeObjectAtIndex:i withObjectAtIndex:j];
                number1 = number2;
            }
        }
    }
   // NSArray *arr11 = [recordClicknumber allKeysForObject:[NSNumber numberWithInt:2]];
    //NSLog(@"arr11:%@",arr11);
    [self reloadData:isSame data:arr];
}

- (void)reloadData:(BOOL)same data:(NSMutableArray *)arr {
    NSMutableArray *temp = [[NSMutableArray alloc]initWithCapacity:0];
    NSArray *keys = [recordClicknumber allKeys];
    NSNumber *num = [NSNumber numberWithInt:-1];
    for (NSNumber *number in arr) {
        if([num isEqualToNumber:number]) {
            break;
        }
        for(NSString *str in keys) {
            if([number isEqualToNumber:[recordClicknumber objectForKey:str]]) {
                [temp addObject:str];
            }
        }
        num = number;
       
    }
    titleArray = temp;
    
}
@end
