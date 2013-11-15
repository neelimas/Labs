//
//  ViewController.m
//  MapApp
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
	
    [self.mapView setShowsUserLocation:YES];
    
    CLLocationCoordinate2D annotationCoord;
    annotationCoord.latitude = 47.640071;
    annotationCoord.longitude = -122.129598;
    
    MKPointAnnotation *ap = [[MKPointAnnotation alloc] init];
    ap.coordinate = annotationCoord;
    ap.title = @"Microsoft";
    ap.subtitle = @"Microsoft Headquarters";
    [self.mapView addAnnotation:ap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)zoomAction:(id)sender
{
    MKUserLocation *userLocation = self.mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 50, 50);
    
    [self.mapView setRegion:region animated:NO];
}

- (IBAction)typeAction:(id)sender
{
    if (self.mapView.mapType == MKMapTypeStandard)
        self.mapView.mapType = MKMapTypeSatellite;
    else
        self.mapView.mapType = MKMapTypeStandard;
}

@end
