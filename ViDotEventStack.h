//
//  ViDotEventStack.h
//  ViMate
//
//  Created by Kirt Fitzpatrick on 9/3/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ViDotEventStack : NSObject {
    bool replayInProgress;
    NSWindow * activeWindow;
    NSMutableArray * eventStack;
    id commandKey;

}

- (void)recordEvent:(NSEvent *)theEvent;

@end
