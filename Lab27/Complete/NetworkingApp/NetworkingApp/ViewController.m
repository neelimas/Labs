//
//  ViewController.m
//  NetworkingApp
//
//  Created by Jason Bell on 10/28/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSURLConnection *_connection;
    NSMutableData *_data;
}

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

- (IBAction)getAction:(id)sender
{
    [self.view endEditing:YES];
    
    NSURL *url = [NSURL URLWithString:self.urlTextField.text];
	
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"GET"];
    
    _data = [NSMutableData data];
    _connection = [NSURLConnection connectionWithRequest:request
                                                delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    if ([response respondsToSelector:@selector(statusCode)])
    {
        int statusCode = [((NSHTTPURLResponse *)response) statusCode];
        self.statusLabel.text = [NSString stringWithFormat:@"%i", statusCode];
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [_data appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *responseString = [NSString stringWithFormat:@"%.*s",
                                [_data length], [_data bytes]];
    self.responseTextView.text = responseString;
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    if (error)
    {
        self.statusLabel.text = @"Error";
        self.responseTextView.text = [error debugDescription];
    }
}

@end
