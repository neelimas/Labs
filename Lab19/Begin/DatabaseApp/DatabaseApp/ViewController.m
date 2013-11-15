//
//  ViewController.m
//  DatabaseApp
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
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

- (IBAction)saveAction:(id)sender {
   AppDelegate *appDelegate =  [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    NSManagedObject *newConatct =  [NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:context];
    [newConatct setValue: [[self nameTextField] text] forKey:@"name"];
    [newConatct setValue: [[self addressTextField] text] forKey:@"address"];
    [newConatct setValue: [[self phoneTextField] text] forKey:@"phone"];
    
    self.phoneTextField.text = @"";
    self.addressTextField.text = @"";
    self.nameTextField.text = @"";
    
    NSError *error;
    [context save:&error];
    self.statusLabel.text =@"Contact Saved";

    
}

- (IBAction)findAction:(id)sender {
    AppDelegate *appDelegate =  [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    NSEntityDescription *entityDesc =  [NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:context];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    request.entity = entityDesc;
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"(name = %@)", self.nameTextField.text];
    
    request.predicate = pred;
    NSError *error;
    
    NSArray *results =  [context executeFetchRequest:request error:&error];
    if([results count] ==0) self.statusLabel.text = @"No results found";
    else
    {
        NSManagedObject *obj = results[0];
        self.nameTextField.text = [obj valueForKey:@"name"];
        self.addressTextField.text = [obj valueForKey:@"address"];
        self.phoneTextField.text = [obj valueForKey:@"phone"];
        self.statusLabel.text = [NSString stringWithFormat:@"%d matches found" , results.count];
    }
}
@end
