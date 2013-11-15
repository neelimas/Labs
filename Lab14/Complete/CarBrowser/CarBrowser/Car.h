//
//  Car.h
//  CarBrowser
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (copy, nonatomic) NSString *make;
@property (copy, nonatomic) NSString *model;
@property (strong, nonatomic) UIImage *image;

+ (Car *)carWithMake:(NSString *)make
               model:(NSString *)model
               image:(UIImage *)image;

@end
