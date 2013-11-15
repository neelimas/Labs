//
//  MyConverter.h
//  TempConverter
//
//  Created by Jason Bell on 10/23/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum { F, C, K } TempScale;

@interface MyConverter : NSObject

@property TempScale temperatureScale;
@property float temperature;

- (float)convert:(TempScale)scale;

@end
