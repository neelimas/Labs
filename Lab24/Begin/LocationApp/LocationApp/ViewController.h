//
//  ViewController.h
//  LocationApp
//
//  Created by Jason Bell on 10/27/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *horizAccLabel;
@property (weak, nonatomic) IBOutlet UILabel *altitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *vertAccLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property CLLocationManager *locationManager;
@property CLLocation *startLocation;

- (IBAction)resetAction:(id)sender;


@end
