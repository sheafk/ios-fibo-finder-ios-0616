//
//  FiboFinder.m
//  FiboFinder
//
//  Created by Chris Gonzales on 6/2/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISFiboFinder.h"

@implementation FISFiboFinder

-(NSInteger)findFiboNumber:(NSInteger)number
{
    NSMutableArray *sequence = [[NSMutableArray alloc] initWithObjects:@0, @1, nil];
    if (number == 0) {
        return 0;
    } else if (number == 1){
        return 1;
    } else {
        for (NSInteger count = 0; count < number-1; count++) {
            NSInteger lastItem = [[sequence lastObject] integerValue];
            int secondToLastIndex = sequence.count - 2;
            NSInteger secondToLastItem = [sequence[secondToLastIndex] integerValue];
            [sequence addObject: [NSNumber numberWithInteger:(lastItem + secondToLastItem)]];
        }
    }
    return [[sequence lastObject] integerValue];
}

@end
