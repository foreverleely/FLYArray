//
//  NSArray+OutOfOrder.h
//  LY
//
//  Created by liyangly on 2018/8/2.
//  Copyright © 2018年 makeupopular.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (OutOfOrder)

+ (NSArray *)getOutOfOrderArray:(NSArray *)array withCount:(int)getCount;

@end
