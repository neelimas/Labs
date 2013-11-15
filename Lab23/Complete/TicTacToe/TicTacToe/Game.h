//
//  Game.h
//  TicTacToe
//
//  Created by Jason Bell on 2/13/13.
//  Copyright (c) 2013 Acme. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum { Empty, X, O } GamePiece;

@interface Game : NSObject

@property (nonatomic) NSArray *board;
@property (nonatomic) GamePiece currentTurn;
@property (readonly, nonatomic) NSArray* winner;

- (void)reset;
- (BOOL)makeMove:(int)cell;

- (void)makeCPUMove;

@end
