//
//  FISFiboFinderAdvanced.m
//  FiboFinder
//
//  Created by Chris Gonzales on 6/3/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISFiboFinderAdvanced.h"

@implementation FISFiboFinderAdvanced
// to use this solution, add the ADVANCED preprocessor macro in your test target's build settings, further detailed in the README
-(NSInteger)findFiboNumber:(NSInteger)number
{
    NSMutableArray *sequence = [[NSMutableArray alloc] initWithObjects:@0, @1, nil];
    if (number == 0) {
        return 0;
    } else if (number == 1){
        return 1;
    } else {
        sequence = [self fiboSequence:sequence withFiboNumber:number];
    }
    return [[sequence lastObject] integerValue];
}

-(NSMutableArray *)fiboSequence:(NSMutableArray *)currentSequence withFiboNumber:(NSInteger)targetNumber
{
    if (currentSequence.count <= targetNumber) {
        NSInteger lastItem = [[currentSequence lastObject] integerValue];
        int secondToLastIndex = (int)currentSequence.count - 2;
        NSInteger secondToLastItem = [currentSequence[secondToLastIndex] integerValue];
        [currentSequence addObject: [NSNumber numberWithInteger:(lastItem + secondToLastItem)]];
        [self fiboSequence:currentSequence withFiboNumber:targetNumber];
    }
   
    return currentSequence;
}

@end
