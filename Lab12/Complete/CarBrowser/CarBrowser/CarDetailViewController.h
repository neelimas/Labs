//
//  CarDetailViewController.h
//  CarBrowser
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Car;

@interface CarDetailViewController : UIViewController

@property (weak, nonatomic) Car *car;

@property (weak, nonatomic) IBOutlet UILabel *makeLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
