/**
 @file CCFBrowserTextFieldButtonImage.h
 @author Alan Duncan (www.cocoafactory.com)
 
 @date 2012-09-20 10:12:03
 @version 1.0
 
 Copyright (c) 2012 Cocoa Factory, LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

typedef void(^CCFBrowserButtonBlock)(void);

/** NSButton subclass that is incorporated in CCFBrowserTextField
 *
 *  This class is instantiated in the normal fashion; but there is an 
 *  expectation that class users call the `setFrame:actionHandler` method in order
 *  to size the control properly
 */
@interface CCFBrowserTextFieldButton : NSButton

///---------------------------------------------------------------------------------------
/// @name Class methods
///---------------------------------------------------------------------------------------

/** Returns the size of the image 
 */
+ (NSSize)browserImageSize;

///---------------------------------------------------------------------------------------
/// @name Initialization and sizing
///---------------------------------------------------------------------------------------

/** Sets the frame of the button and its action handler
 *
 *  @param browserRect The frame for the button
 *  @param aHandler A CCFBrowserButtonBlock that is executed on mouseDown in the 
 *  button.
 */
- (void)setFrame:(NSRect)browserRect actionHandler:(CCFBrowserButtonBlock)aHandler;

- (void)setActionHandler:(CCFBrowserButtonBlock)aHandler;

@end
