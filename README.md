##CCFBrowserTextField##

A cool little `NSTextField` subclass from Cocoa Factory that incorporates a browser button inside the text field.

Have you ever wanted to use a text field to let the user specify a path while providing a convenient way to browse the path to select it?  That's the problem we were trying to solve with `CCFBrowserTextField`.

So, what does it look like? Like this.  Simple, direct, and makes sense.

![screenshot](http://i46.tinypic.com/2nlz5ah.png)

##How do I use it##

Easy, just copy all of the files into your project and instantiate `CFBrowserTextField` in Interface Builder.  If you want the browser button to actually do something, you  need to provide an action block like this:

    - (void)awakeFromNib {
        [[self projectField] setActionBlock:^{
            NSLog(@"Project field button tapped");
            // or, maybe launch NSOpenPanel etc.
        }];
	}
	
##Standing on the shoulder of giants##

We got the idea for `CCFBrowserTextField` from a group of classes in the OmniAppKit framework.  Thanks to the Omni Group for making their frameworks open source so that us mere mortals can learn from the masters.

##More shout-outs

Check out the `CCFBrowserTextFieldButtonImage` class.  This is an `NSImage` subclass that draws the document icon into itself.  We used PaintCode to develop the Core Graphics bits that draw the image.  Where possible we'd rather draw programmatically than load up our code with pngs, it satisfies the geek in us.

##License##

We hope you use `CCFBrowserTextField`.  If you do, give us credit.  This software is distributed with the MIT License.  Each file should contain the following license information:

>> Copyright (c) 2012 Cocoa Factory, LLC
 
>>Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
>>The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
>>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.