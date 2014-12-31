//
//  MyLargeInteger.h
//  MyLargeInteger_ios
//
//  Created by Etay Luz on 12/30/14.
//  Copyright (c) 2014 trov.interview.question. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyLargeInteger : UIViewController

@property NSString *largeInteger;

-(MyLargeInteger*) add:(MyLargeInteger*)largerInteger;
-(BOOL)isEqualTo:(MyLargeInteger*)largerInteger;

@end
