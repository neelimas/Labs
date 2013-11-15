//
//  CarCollectionViewController.m
//  CarBrowser
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "CarCollectionViewController.h"
#import "Car.h"
#import "CarCollectionViewCell.h"

@interface CarCollectionViewController ()

@end

@implementation CarCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self setCars:@[
        [Car carWithMake:@"Chevy" model:@"Volt" image:[UIImage imageNamed:@"ChevyVolt"]],
        [Car carWithMake:@"BMW" model:@"Mini" image:[UIImage imageNamed:@"MiniClubman"]],
        [Car carWithMake:@"Toyota" model:@"Venza" image:[UIImage imageNamed:@"ToyotaVenza"]],
        [Car carWithMake:@"Volvo" model:@"S60" image:[UIImage imageNamed:@"VolvoS60"]],
        [Car carWithMake:@"Smart" model:@"Fortwo" image:[UIImage imageNamed:@"SmartFortwo"]]
    ]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.cars.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CarCell";
    CarCollectionViewCell *cell = [[self collectionView] dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Car *car;
    car = self.cars[indexPath.row];
    
    cell.imageView.image = car.image;
    
    return cell;
}

@end
