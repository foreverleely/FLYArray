//
//  NSArray+OutOfOrder.m
//  LY
//
//  Created by liyangly on 2018/8/2.
//  Copyright © 2018年 makeupopular.com. All rights reserved.
//

#import "NSArray+OutOfOrder.h"

@implementation NSArray (OutOfOrder)

/**
 随机取数组中的元素组成一个新数组

 @param array 原数组
 @param getCount 新数组个数
 @return 新数组
 */
+ (NSArray *)getOutOfOrderArray:(NSArray *)array withCount:(int)getCount {
    NSMutableArray * mutArray = [[NSMutableArray alloc] initWithArray:array];
    NSMutableArray *mutArr = [NSMutableArray new];
    for (int i = 0; i < getCount; i ++) {
        int t = arc4random() % mutArray.count;
        mutArr[i] = mutArray[t];
        mutArray[t] = [mutArray lastObject];
        [mutArray removeLastObject];
    }
    return mutArr;
}

@end
