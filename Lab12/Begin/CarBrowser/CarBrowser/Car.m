//
//  Car.m
//  CarBrowser
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "Car.h"

@implementation Car

+ (Car *)carWithMake:(NSString *)make
               model:(NSString *)model
               image:(UIImage *)image
{
    Car *car = [[Car alloc] init];
    
    car.make = make;
    car.model = model;
    car.image = image;
    
    return car;
}

@end
