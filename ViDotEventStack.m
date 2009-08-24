//
//  ViDotEventStack.m
//  ViMate
//
//  Created by Kirt Fitzpatrick on 9/3/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.
//

#import "ViDotEventStack.h"


@implementation ViDotEventStack

- (id)init
{
    if ( [super init] ) {
        eventStack = [NSMutableArray arrayWithCapacity: 80];
    }

    return self;
}

- (void)setCommandKey(NSString *)theKey
{
    commandKey = theWindow;
}

- (void)setWindow(NSWindow *)theWindow
{
    activeWindow = theWindow;
}

- (void)recordEvent(NSEvent *)theEvent
{
    if ( ! replayInProgress ) {
        [eventStack addObject];
    }
}

- (void)replay
{
    NSEnumerator *enumerator = [eventStack objectEnumerator];
    NSEvent * anEvent;

    replayInProgress = true;

    while (anEvent = [enumerator nextObject]) {
        event = [activeWindow sendEvent:anEvent];
    }

    replayInProgress = false;
}

@end
