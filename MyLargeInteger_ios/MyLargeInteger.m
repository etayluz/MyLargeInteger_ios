//
//  MyLargeInteger.m
//  MyLargeInteger_ios
//
//  Created by Etay Luz on 12/30/14.
//  Copyright (c) 2014 trov.interview.question. All rights reserved.
//

#import "MyLargeInteger.h"

@interface MyLargeInteger ()

@end

@implementation MyLargeInteger


-(BOOL)isEqualTo:(MyLargeInteger*)largerInteger
{
    return [self.largeInteger isEqualToString:largerInteger.largeInteger];
}

-(MyLargeInteger*) add:(MyLargeInteger*)largerInteger
{
    NSString *largerIntegerSumString = @"";
    int carry = 0;
    int digitA, digitB;
    for (int idx=0; idx < 100; idx++)
    {
        if (self.largeInteger.length - 1 < idx)
            digitA = 0;
        else
            digitA = [[self.largeInteger substringWithRange:NSMakeRange((self.largeInteger.length - 1)-idx, 1)] intValue];
        
        if (largerInteger.largeInteger.length - 1 < idx)
            digitB = 0;
        else
            digitB = [[largerInteger.largeInteger substringWithRange:NSMakeRange((largerInteger.largeInteger.length - 1)-idx, 1)] intValue];
        
        int digitSum = (digitA + digitB) % 10 + carry;
        largerIntegerSumString = [NSString stringWithFormat:@"%d%@", digitSum, largerIntegerSumString];
        carry = (digitA + digitB) /10;
    }

    MyLargeInteger *largerIntegerSum = [MyLargeInteger new];
    largerIntegerSum.largeInteger = largerIntegerSumString;
    return largerIntegerSum;
    
}


@end
