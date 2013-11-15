//
//  ViewController.m
//  LocationApp
//
//  Created by Jason Bell on 10/27/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
    
    self.startLocation = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resetAction:(id)sender
{
    self.startLocation = nil;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *mostRecentLocation = [locations lastObject];
    
    self.latitudeLabel.text = [NSString stringWithFormat:@"%+.6f", mostRecentLocation.coordinate.latitude];
    self.longitudeLabel.text = [NSString stringWithFormat:@"%+.6f", mostRecentLocation.coordinate.longitude];
    self.horizAccLabel.text = [NSString stringWithFormat:@"%+.6f", mostRecentLocation.horizontalAccuracy];
    self.altitudeLabel.text = [NSString stringWithFormat:@"%+.6f", mostRecentLocation.altitude];
    self.vertAccLabel.text = [NSString stringWithFormat:@"%+.6f", mostRecentLocation.verticalAccuracy];
    
    if (!self.startLocation) self.startLocation = mostRecentLocation;
    
    CLLocationDistance d = [mostRecentLocation distanceFromLocation:self.startLocation];
    self.distanceLabel.text = [NSString stringWithFormat:@"%f", d];
}

@end
