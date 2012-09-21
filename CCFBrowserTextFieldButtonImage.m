/**
 @file CCFBrowserTextFieldButtonImage.m
 @author Alan Duncan (www.cocoafactory.com)
 
 @date 2012-09-20 10:11:48
 @version 1.0
 
 Copyright (c) 2012 Cocoa Factory, LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


#import "CCFBrowserTextFieldButtonImage.h"

static void _drawIcon(CCFBrowserTextFieldButtonImage *self) {
    
    //  begin drawing into our 
    [self lockFocus];
    //// Frames
    NSRect frame = NSMakeRect(0, 0, self.size.width, self.size.height);
    
    //// backgroundRect Drawing
    NSBezierPath  *backgroundRectPath = [NSBezierPath bezierPathWithRect: NSMakeRect(0, 0, 18, 18)];
    [[NSColor whiteColor] setFill];
    [backgroundRectPath fill];
    
    //// documentBody Drawing
    NSBezierPath *documentBodyPath = [NSBezierPath bezierPathWithRect: NSMakeRect(NSMinX(frame) + 3, NSMinY(frame) + NSHeight(frame) - 16.5, 11, 15)];
    [[NSColor lightGrayColor] setFill];
    [documentBodyPath fill];
    
    
    //// pageCornerPath Drawing
    NSBezierPath *pageCornerPathPath = [NSBezierPath bezierPath];
    [pageCornerPathPath moveToPoint: NSMakePoint(NSMinX(frame) + 9.5, NSMaxY(frame) - 1.5)];
    [pageCornerPathPath lineToPoint: NSMakePoint(NSMinX(frame) + 9.5, NSMaxY(frame) - 5.5)];
    [pageCornerPathPath lineToPoint: NSMakePoint(NSMinX(frame) + 13.5, NSMaxY(frame) - 5.5)];
    [[NSColor whiteColor] setStroke];
    [pageCornerPathPath setLineWidth: 1];
    [pageCornerPathPath stroke];
    
    
    //// topLinePath Drawing
    NSBezierPath *topLinePathPath = [NSBezierPath bezierPath];
    [topLinePathPath moveToPoint: NSMakePoint(NSMinX(frame) + 4.5, NSMaxY(frame) - 9.5)];
    [topLinePathPath curveToPoint: NSMakePoint(NSMinX(frame) + 11.5, NSMaxY(frame) - 9.5) controlPoint1: NSMakePoint(NSMinX(frame) + 12.5, NSMaxY(frame) - 9.5) controlPoint2: NSMakePoint(NSMinX(frame) + 11.5, NSMaxY(frame) - 9.5)];
    [[NSColor whiteColor] setStroke];
    [topLinePathPath setLineWidth: 1];
    [topLinePathPath stroke];
    
    
    //// midLinePath Drawing
    NSBezierPath *midLinePathPath = [NSBezierPath bezierPath];
    [midLinePathPath moveToPoint: NSMakePoint(NSMinX(frame) + 4.5, NSMaxY(frame) - 11.5)];
    [midLinePathPath curveToPoint: NSMakePoint(NSMinX(frame) + 11.5, NSMaxY(frame) - 11.5) controlPoint1: NSMakePoint(NSMinX(frame) + 12.5, NSMaxY(frame) - 11.5) controlPoint2: NSMakePoint(NSMinX(frame) + 11.5, NSMaxY(frame) - 11.5)];
    [[NSColor whiteColor] setStroke];
    [midLinePathPath setLineWidth: 1];
    [midLinePathPath stroke];
    
    
    //// bottomLinePath Drawing
    NSBezierPath *bottomLinePathPath = [NSBezierPath bezierPath];
    [bottomLinePathPath moveToPoint: NSMakePoint(NSMinX(frame) + 4.5, NSMaxY(frame) - 13.5)];
    [bottomLinePathPath curveToPoint: NSMakePoint(NSMinX(frame) + 11.5, NSMaxY(frame) - 13.5) controlPoint1: NSMakePoint(NSMinX(frame) + 12.5, NSMaxY(frame) - 13.5) controlPoint2: NSMakePoint(NSMinX(frame) + 11.5, NSMaxY(frame) - 13.5)];
    [[NSColor whiteColor] setStroke];
    [bottomLinePathPath setLineWidth: 1];
    [bottomLinePathPath stroke];
    
    [self unlockFocus];
}

@implementation CCFBrowserTextFieldButtonImage

- (id)init {
    self = [super init];
    if( !self ) return nil;
    
    self.size = NSMakeSize(18, 18);
    
    _drawIcon(self);
    
    return self;
}

@end
