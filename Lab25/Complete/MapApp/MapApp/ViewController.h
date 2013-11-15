//
//  ViewController.h
//  MapApp
//
//  Created by Jason Bell on 10/27/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)zoomAction:(id)sender;
- (IBAction)typeAction:(id)sender;

@end
