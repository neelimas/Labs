//
//  DrawingView.m
//  DrawingApp
//
//  Created by Jason Bell on 10/27/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context,
                                     [[UIColor blueColor] CGColor]);
    
    //CGContextMoveToPoint(context, 50, 50);
    //CGContextAddLineToPoint(context, 300, 400);
    //CGContextStrokePath(context);
    
    //CGRect rectangle = CGRectMake(60, 170, 200, 80);
    //CGContextAddRect(context, rectangle);
    //CGContextStrokePath(context);
    
    CGRect rectangle = CGRectMake(60, 170, 200, 80);
    CGContextAddEllipseInRect(context, rectangle);
    CGContextStrokePath(context);
}

@end
