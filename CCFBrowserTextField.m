/**
 @file CCFBrowserTextField.m
 @author Alan Duncan (www.cocoafactory.com)
 
 @date 2012-09-20 10:11:23
 @version 1.0
 
 Copyright (c) 2012 Cocoa Factory, LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#import "CCFBrowserTextField.h"
#import "CCFBrowserTextFieldCell.h"
#import "CCFBrowserTextFieldButton.h"
#import <objc/runtime.h>

@implementation CCFBrowserTextField {
    CCFBrowserTextFieldButton *_browserButton;
}

+ (Class)cellClass {
    return [CCFBrowserTextFieldCell class];
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    
    return [self _initTextFieldCompletion];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    return [self _initTextFieldCompletion];
}

#pragma mark - Public API

- (void)setActionBlock:(CCFBrowserButtonBlock)aBlock {
    [_browserButton setActionHandler:aBlock];
}

#pragma mark - NSControl subclass methods

- (void)setEditable:(BOOL)flag {
    [super setEditable:flag];
    [_browserButton setEnabled:flag];
}

- (void)resetCursorRects {
    [self addCursorRect:self.bounds cursor:[NSCursor IBeamCursor]];
    if( ![_browserButton isHidden] ) {
        [self addCursorRect:[_browserButton frame] cursor:[NSCursor arrowCursor]];
    }
}

- (void)didAddSubview:(NSView *)subview {
    if( subview == _browserButton )
        return;
    [_browserButton removeFromSuperview];
    [self addSubview:_browserButton];
}

- (id)_initTextFieldCompletion {
    if( !_browserButton ) {
        NSSize browserImageSize = [CCFBrowserTextFieldButton browserImageSize];
        NSRect buttonFrame = NSMakeRect(0.0f, 0.0f, browserImageSize.width, browserImageSize.height);
        _browserButton = [[CCFBrowserTextFieldButton alloc] initWithFrame:buttonFrame];
        buttonFrame = [CCFBrowserTextFieldCell rectForBrowserFrame:self.bounds];
        
        [self _setCellClass];
        
        
        [self addSubview:_browserButton];
        self.autoresizesSubviews = YES;
        [_browserButton setFrame:buttonFrame actionHandler:^{
            NSLog(@"pushed");
        }];
    }
    return self;
}

- (void)_setCellClass {
    Class customClass = [CCFBrowserTextFieldCell class];
    
    //  since we are switching the isa pointer, we need to guarantee that the class layout in memory is the same
    NSAssert(class_getInstanceSize(customClass) == class_getInstanceSize(class_getSuperclass(customClass)), @"Incompatible class assignment");
    
    //  switch classes if we are not already switched
    NSCell *cell = [self cell];
    if( ![cell isKindOfClass:[CCFBrowserTextFieldCell class]] ) {
        object_setClass(cell, customClass);
    }
}


@end
