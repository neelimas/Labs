//
//  BoardView.h
//  TicTacToe
//
//  Created by Jason Bell on 2/13/13.
//  Copyright (c) 2013 Acme. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Game;

@interface BoardView : UIView

@property CGRect boardRect;
@property Game *game;

- (int)cellForPoint:(CGPoint)point;

@end
