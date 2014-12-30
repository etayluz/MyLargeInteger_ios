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

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.largerIntegerA = @"1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890";
//    self.largerIntegerB = @"1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    self.largerIntegerB = @"90817234908127490182749081237409871230498712908";
    NSString *largerIntegerSum = [self addLargeInteger:self.largerIntegerA and:self.largerIntegerB];
    NSLog(@"%@", largerIntegerSum);
    NSLog(@"%hhd", [self isEqual:self.largerIntegerA to:self.largerIntegerB]);

}

-(BOOL)isEqual:(NSString*)largerIntegerA to:(NSString*)largerIntegerB
{
    return [largerIntegerA isEqualToString:largerIntegerB];
}

-(NSString*)addLargeInteger:(NSString*)largerIntegerA and:(NSString*)largerIntegerB
{
    NSString *largerIntegerSum = @"";
    int carry = 0;
    int digitA, digitB;
    for (int idx=0; idx < 100; idx++)
    {
        if (largerIntegerA.length - 1 < idx)
            digitA = 0;
        else
            digitA = [[largerIntegerA substringWithRange:NSMakeRange((largerIntegerA.length - 1)-idx, 1)] intValue];
        
        if (largerIntegerB.length - 1 < idx)
            digitB = 0;
        else
            digitB = [[largerIntegerB substringWithRange:NSMakeRange((largerIntegerB.length - 1)-idx, 1)] intValue];
        
        int digitSum = (digitA + digitB) % 10 + carry;
        largerIntegerSum = [NSString stringWithFormat:@"%d%@", digitSum, largerIntegerSum];
        carry = (digitA + digitB) /10;
    }

    
    return largerIntegerSum;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
