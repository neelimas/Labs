//
//  ViewController.h
//  DatabaseApp
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

- (IBAction)saveAction:(id)sender;
- (IBAction)findAction:(id)sender;
@property (nonatomic) sqlite3 *contactDB;
@property (copy, nonatomic) NSString *databasePath;


@end
