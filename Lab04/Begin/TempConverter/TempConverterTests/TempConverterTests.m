//
//  TempConverterTests.m
//  TempConverterTests
//
//  Created by Jason Bell on 10/23/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MyConverter.h"

@interface TempConverterTests : XCTestCase

@end

@implementation TempConverterTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCelsiusToFahrenheit
{
    float c = 100.0;
    float f;
    
    MyConverter *converter = [[MyConverter alloc] init];
    f = [converter convertToFahrenheit:c];
    
    XCTAssertTrue(f == 212.0);
}

- (void)testFahrenheitToCelsius
{
    float f = 32.0;
    float c;
    
    MyConverter *converter = [[MyConverter alloc] init];
    c = [converter convertToCelsius:f];
    
    XCTAssertTrue(c == 0.0);
}


@end





















































