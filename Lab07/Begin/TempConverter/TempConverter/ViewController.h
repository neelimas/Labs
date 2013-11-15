//
//  ViewController.h
//  TempConverter
//
//  Created by Jason Bell on 10/23/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)convertAction:(id)sender;
- (IBAction)textFieldDidReturn:(id)sender;

@end
