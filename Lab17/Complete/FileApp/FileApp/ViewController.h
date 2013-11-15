//
//  ViewController.h
//  FileApp
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyDocument;

@interface ViewController : UIViewController

@property MyDocument *document;

@property (weak, nonatomic) IBOutlet UITextView *textView;

- (IBAction)saveAction:(id)sender;

@end
