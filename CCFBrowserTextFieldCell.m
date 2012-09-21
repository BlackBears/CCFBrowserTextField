/**
    @file CCFBrowserTextFieldCell.m
    @author Alan Duncan (www.cocoafactory.com)
    
    @date 2012-09-19 12:28:14
    @version 1.0
    
    Copyright (c) 2012 Cocoa Factory, LLC
 
    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "CCFBrowserTextFieldCell.h"
#import "CCFBrowserTextFieldButton.h"

@implementation CCFBrowserTextFieldCell

- (NSRect)titleRectForBounds:(NSRect)bounds;
{
    NSRect buttonRect = [[self class] rectForBrowserFrame:bounds];
    float horizontalEdgeGap = 0.0f;
    
    bounds.size.width -= NSWidth(buttonRect) + horizontalEdgeGap;
    return bounds;
}

- (void)editWithFrame:(NSRect)aRect inView:(NSView *)controlView editor:(NSText *)textObj delegate:(id)anObject event:(NSEvent *)theEvent;
{
    [super editWithFrame:[self titleRectForBounds:aRect] inView:controlView editor:textObj delegate:anObject event:theEvent];
}

- (void)selectWithFrame:(NSRect)aRect inView:(NSView *)controlView editor:(NSText *)textObj delegate:(id)anObject start:(NSInteger)selStart length:(NSInteger)selLength;
{
    [super selectWithFrame:[self titleRectForBounds:aRect] inView:controlView editor:textObj delegate:anObject start:selStart length:selLength];
}

+ (NSRect)rectForBrowserFrame:(NSRect)cellFrame {
    CGFloat verticalEdgeGap = (CGFloat)floor((NSHeight(cellFrame) - [CCFBrowserTextFieldButton browserImageSize].height)/2.0f);
    const CGFloat horizontalEdgeGap = 2.0f;
    
    NSRect imageRect;
    imageRect.origin.x = NSMaxX(cellFrame) - [CCFBrowserTextFieldButton browserImageSize].width - horizontalEdgeGap;
    imageRect.origin.y = NSMinY(cellFrame) + verticalEdgeGap;
    imageRect.size = [CCFBrowserTextFieldButton browserImageSize];
    
    return imageRect;
}

@end
