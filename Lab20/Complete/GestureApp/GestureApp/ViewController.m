//
//  ViewController.m
//  GestureApp
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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)reportEvent:(NSString *)method touches:(NSSet *)touches
{
    UITouch *touch = [touches anyObject];
    
    int touchCount = touches.count;
    int tapCount = touch.tapCount;
    CGPoint p = [touch locationInView:self.view];
    
    self.methodLabel.text = method;
    self.touchesLabel.text = [NSString stringWithFormat:
                              @"%d touches", touchCount];
    
    self.tapsLabel.text = [NSString stringWithFormat:@"%d taps", tapCount];
    self.positionLabel.text = [NSString stringWithFormat:@"(%.2f, %.2f)", p.x, p.y];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self reportEvent:@"touchesBegan" touches:touches];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self reportEvent:@"touchesMoved" touches:touches];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self reportEvent:@"touchesEnded" touches:touches];
}

@end
