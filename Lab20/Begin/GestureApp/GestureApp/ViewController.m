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
-(void)reportEvent:(NSString *)method touches:(NSSet *)touches
{
    UITouch *touch = [touches anyObject];
    int touchCount = touches.count;
    int tapCount = touch.tapCount;
//    NSArray * array = [NSArray alloc] ini
    
    NSMutableString *strTouches = [NSMutableString stringWithCapacity:16];
    for (UITouch *t in touches) {
      CGPoint   p = [touch locationInView:self.view];
        [strTouches appendFormat:@"(%.2f, %.2f)",p.x, p.y];
    }
//    CGPoint p = [touch locationInView:self.view];
    self.methodLabel.text = method;
    self.touchesLabel.text = [NSString stringWithFormat:@"%d touches",touchCount];
    self.tapsLabel.text = [NSString stringWithFormat:@"%d taps", tapCount];
    //self.positionLabel.text = [NSString stringWithString:strTouches];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self reportEvent:@"touchBegan" touches:touches];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self reportEvent:@"touches moved" touches:touches];
    UITouch *touch = [touches anyObject];
    CGPoint   p = [touch locationInView:self.view];
    self.anotherLabel.text = [NSString stringWithFormat:@"(%.2f, %.2f)", p.x, p.y];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self reportEvent:@"touches ended" touches:touches];
}

@end
