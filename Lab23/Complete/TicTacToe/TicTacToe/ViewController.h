//
//  ViewController.h
//  TicTacToe
//
//  Created by Jason Bell on 2/13/13.
//  Copyright (c) 2013 Acme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@class BoardView;

@interface ViewController : UIViewController <AVAudioPlayerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *numPlayersField;

- (IBAction)tapAction:(id)sender;
- (IBAction)newGameAction:(id)sender;


@end
