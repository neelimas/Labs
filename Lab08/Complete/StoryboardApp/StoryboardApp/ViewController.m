//
//  ViewController.m
//  StoryboardApp
//
//  Created by Jason Bell on 10/25/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqual:@"mySegue"])
    {
        SecondViewController *svc = (SecondViewController *)[segue destinationViewController];
        svc.textValue = self.textField.text;
    }
}

@end
