/**
 @file CCFBrowserTextFieldCell.h
 @author Alan Duncan (www.cocoafactory.com)
 
 @date 2012-09-19 12:28:14
 @version 1.0
 
 Copyright (c) 2012 Cocoa Factory, LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


/** Cell for CCFBrowserTextField
 
 This NSTextFieldCell subclass provides some of the NSCell
 functionality for CCFBrowserTextField. */

@interface CCFBrowserTextFieldCell : NSTextFieldCell

///---------------------------------------------------------------------------------------
/// @name Class methods
///---------------------------------------------------------------------------------------

/** Returns the rectangle for the frame used by he browser icon
 
 @param cellFrame The NSRect of the cell's frame
 @return The frame of the icon component based on the provided frame.
 */
+ (NSRect)rectForBrowserFrame:(NSRect)cellFrame;

@end
