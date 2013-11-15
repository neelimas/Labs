//
//  SecondViewController.h
//  StoryboardApp
//
//  Created by Jason Bell on 10/25/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (copy, nonatomic) NSString *textValue;

@property (weak, nonatomic) IBOutlet UILabel *theLabel;

@end
