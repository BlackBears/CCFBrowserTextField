/**
 @file CCFBrowserTextFieldButtonImage.m
 @author Alan Duncan (www.cocoafactory.com)
 
 @date 2012-09-20 10:12:10
 @version 1.0
 
 Copyright (c) 2012 Cocoa Factory, LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


#import "CCFBrowserTextFieldButton.h"
#import "CCFBrowserTextFieldButtonImage.h"

static NSImage *browserImage;
static NSSize browserImageSize;

@implementation CCFBrowserTextFieldButton {
    CCFBrowserButtonBlock _actionBlock;
}

+ (void)initialize {
    browserImage = [[CCFBrowserTextFieldButtonImage alloc] init];
    browserImageSize = browserImage.size;
}

+ (NSSize)browserImageSize {
    return browserImageSize;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if( !self ) return nil;
    
    [self setButtonType:NSMomentaryPushInButton];
    [self setBordered:NO];
    [self setImage:browserImage];
    [self setImagePosition:NSImageOnly];
    [self setAutoresizingMask:NSViewMinXMargin | NSViewMinYMargin | NSViewMaxYMargin];
    
    return self;
}

- (void)setFrame:(NSRect)browserRect actionHandler:(CCFBrowserButtonBlock)aHandler {
    self.target = self;
    self.action = @selector(handleAction);
    self.frame = browserRect;
    _actionBlock = aHandler;
}

- (void)setActionHandler:(CCFBrowserButtonBlock)aHandler {
    _actionBlock = aHandler;
}

- (BOOL)canBecomeKeyView {
    return NO;
}

- (BOOL)shouldDelayWindowOrderingForEvent:(NSEvent *)theEvent {
    return YES;
}

- (void)mouseDown:(NSEvent *)theEvent {
    [NSApp preventWindowOrdering];
    [super mouseDown:theEvent];
}

- (void)handleAction {
    _actionBlock();
}

@end
