//
//  ViewController.h
//  ImageGrabber
//
//  Created by Jason Bell on 10/28/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)getImageAction:(id)sender;

@end
