//
//  MyConverter.m
//  TempConverter
//
//  Created by Jason Bell on 10/23/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "MyConverter.h"

@implementation MyConverter

- (float)convertToCelsius:(float)temp
{
    float retVal = (temp - 32.0) * (5.0 / 9.0);
    return retVal;
}

- (float)convertToFahrenheit:(float)temp
{
    float retVal = temp * (9.0 / 5.0) + 32.0;
    return retVal;
}

@end
