//
//  MyDocument.m
//  FileApp
//
//  Created by Jason Bell on 10/26/13.
//  Copyright (c) 2013 Classroom. All rights reserved.
//

#import "MyDocument.h"

@implementation MyDocument

- (id)contentsForType:(NSString *)typeName error:(NSError *__autoreleasing *)outError
{
    return [NSData dataWithBytes:self.userText.UTF8String
                          length:self.userText.length];
}

- (BOOL)loadFromContents:(id)contents ofType:(NSString *)typeName error:(NSError *__autoreleasing *)outError
{
    if ([contents length] > 0)
    {
        self.userText = [[NSString alloc] initWithBytes:[contents bytes]
                                                 length:[contents length]
                                               encoding:NSUTF8StringEncoding];
    }
    else
    {
        self.userText = @"";
    }
    return YES;
}

@end
