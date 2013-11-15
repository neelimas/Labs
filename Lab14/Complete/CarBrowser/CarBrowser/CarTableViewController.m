//
//  CarTableViewController.m
//  CarBrowser
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "CarTableViewController.h"
#import "Car.h"
#import "CarTableViewCell.h"
#import "CarDetailViewController.h"

@interface CarTableViewController ()

@end

@implementation CarTableViewController
{
    bool isSearchInProgress;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        isSearchInProgress = NO;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.searchDisplayController.searchResultsTableView.rowHeight = self.tableView.rowHeight;
    
    [self setCars:@[
        [Car carWithMake:@"Chevy" model:@"Volt" image:[UIImage imageNamed:@"ChevyVolt"]],
        [Car carWithMake:@"BMW" model:@"Mini" image:[UIImage imageNamed:@"MiniClubman"]],
        [Car carWithMake:@"Toyota" model:@"Venza" image:[UIImage imageNamed:@"ToyotaVenza"]],
        [Car carWithMake:@"Volvo" model:@"S60" image:[UIImage imageNamed:@"VolvoS60"]],
        [Car carWithMake:@"Smart" model:@"Fortwo" image:[UIImage imageNamed:@"SmartFortwo"]]
    ]];
    
    self.filteredCars = [NSMutableArray arrayWithCapacity:self.cars.count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)filterContentForSearchText:(NSString*)searchText
{
    [self.filteredCars removeAllObjects];
	
    for (Car *car in self.cars)
    {
        NSComparisonResult result = [car.make compare:searchText
                                              options:(NSCaseInsensitiveSearch|NSDiacriticInsensitiveSearch)
                                                range:NSMakeRange(0, [searchText length])];
        
        if (result == NSOrderedSame) [self.filteredCars addObject:car];
    }
}

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString];
    return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView)
        return self.filteredCars.count;
    else
        return self.cars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CarCell";
    CarTableViewCell *cell = (CarTableViewCell *)[[self tableView] dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Car *car;
    if (tableView == self.searchDisplayController.searchResultsTableView)
        car = self.filteredCars[indexPath.row];
    else
        car = self.cars[indexPath.row];
    
    cell.carImageView.image = car.image;
    cell.makeLabel.text = car.make;
    cell.modelLabel.text = car.model;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)searchDisplayController:(UISearchDisplayController *)controller didShowSearchResultsTableView:(UITableView *)tableView
{
    isSearchInProgress = YES;
}

- (void)searchDisplayController:(UISearchDisplayController *)controller didHideSearchResultsTableView:(UITableView *)tableView
{
    isSearchInProgress = NO;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CarDetailViewController *dvc = [segue destinationViewController];

    int row = (isSearchInProgress ? self.searchDisplayController.searchResultsTableView.indexPathForSelectedRow.row : self.tableView.indexPathForSelectedRow.row);

    dvc.car = (isSearchInProgress ? self.filteredCars[row] : self.cars[row]);
}

@end
