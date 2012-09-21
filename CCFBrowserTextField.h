/**
 @file CCFBrowserTextField.h
 @author Alan Duncan (www.cocoafactory.com)
 
 @date 2012-09-20 10:11:12
 @version 1.0
 
 Copyright (c) 2012 Cocoa Factory, LLC
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


/** NSTextField subclass that provides a small document button in the
 right side of the view.  It is intended in situations where you wish to fill
 in the text field by browsing to a location in the file system.
 
 To use the class, you simply add it to your view when editing the nib.
 
 @note Currently, this only support the regular size 22px high text field.
 
 @note This class and those that compose it are inspired by OADatePickerTextField and its related
 classes published as open source components by the Omni Group.
 */

#import "CCFBrowserTextFieldButton.h"

@interface CCFBrowserTextField : NSTextField

/** Set the action block from the browser button
 
 If the class user wishes to receive mouse down events in the field's
 button, it should use this method to provide a block to be executed.
 
 @param aBlock the block to be executed with the field's button is
 tapped.
 */
- (void)setActionBlock:(CCFBrowserButtonBlock)aBlock;

@end
