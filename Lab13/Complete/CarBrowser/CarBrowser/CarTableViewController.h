//
//  CarTableViewController.h
//  CarBrowser
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarTableViewController : UITableViewController <UISearchDisplayDelegate>

@property (strong, nonatomic) NSArray *cars;
@property (strong, nonatomic) NSMutableArray *filteredCars;

@end
