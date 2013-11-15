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
    MyConverter *converter = [[MyConverter alloc] init];
    converter.temperatureScale = C;
    converter.temperature = 100.0;
    
    XCTAssertTrue([converter convert:F] == 212.0);
}

- (void)testFahrenheitToCelsius
{
    MyConverter *converter = [[MyConverter alloc] init];
    converter.temperatureScale = F;
    converter.temperature = 32.0;
    
    XCTAssertTrue([converter convert:C] == 0.0);
}


@end





















































