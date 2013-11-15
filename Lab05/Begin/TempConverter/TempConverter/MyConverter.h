//
//  MyConverter.h
//  TempConverter
//
//  Created by Jason Bell on 10/23/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyConverter : NSObject

- (float)convertToCelsius:(float)temp;
- (float)convertToFahrenheit:(float)temp;

@end
