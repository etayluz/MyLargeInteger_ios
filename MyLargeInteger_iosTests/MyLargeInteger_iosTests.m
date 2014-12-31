//
//  MyLargeInteger_iosTests.m
//  MyLargeInteger_iosTests
//
//  Created by Etay Luz on 12/30/14.
//  Copyright (c) 2014 trov.interview.question. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MyLargeInteger.h"

@interface MyLargeInteger_iosTests : XCTestCase

@end

@implementation MyLargeInteger_iosTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAddition1 {
    // This is an example of a functional test case.
    MyLargeInteger *largerIntegerA = [MyLargeInteger new];
    MyLargeInteger *largerIntegerB = [MyLargeInteger new];

    largerIntegerA.largeInteger = @"1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890";
    largerIntegerB.largeInteger = @"90817234908127490182749081237409871230498712908";
    MyLargeInteger *largerIntegerSum = [largerIntegerA add:largerIntegerB];
    XCTAssertEqualObjects(largerIntegerSum.largeInteger, @"1234567890123456789012345678901234567890123456789012436496136142695380306110587024975554101317332710798", @"Addtion error");
}

- (void)testAddition2 {
    // This is an example of a functional test case.
    MyLargeInteger *largerIntegerA = [MyLargeInteger new];
    MyLargeInteger *largerIntegerB = [MyLargeInteger new];
    
    largerIntegerA.largeInteger = @"908712345963240971234098712039847";
    largerIntegerB.largeInteger = @"90817234908127490182749081237409871230498712908";
    MyLargeInteger *largerIntegerSum = [largerIntegerA add:largerIntegerB];
    XCTAssertEqualObjects(largerIntegerSum.largeInteger, @"00000000000000000000000000000000000000000000000000000908172349081283988950941044478381105329210752755", @"Addtion error");
}

- (void)testAddition3 {
    // This is an example of a functional test case.
    MyLargeInteger *largerIntegerA = [MyLargeInteger new];
    MyLargeInteger *largerIntegerB = [MyLargeInteger new];
    
    largerIntegerA.largeInteger = @"1000000";
    largerIntegerB.largeInteger = @"2000044";
    MyLargeInteger *largerIntegerSum = [largerIntegerA add:largerIntegerB];
    XCTAssertEqualObjects(largerIntegerSum.largeInteger, @"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000044", @"Addtion error");
}

- (void)testIsEqual1 {
    // This is an example of a functional test case.
    MyLargeInteger *largerIntegerA = [MyLargeInteger new];
    MyLargeInteger *largerIntegerB = [MyLargeInteger new];
    
    largerIntegerA.largeInteger = @"1000000";
    largerIntegerB.largeInteger = @"1000000";
    XCTAssertTrue([largerIntegerA isEqualTo:largerIntegerB], @"Not Equal Error");
}
@end
