//
//  ViewController.h
//  NetworkingApp
//
//  Created by Jason Bell on 10/28/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UITextView *responseTextView;

- (IBAction)getAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *wvWeb;

@end
