//
//  ViewController.h
//  TabsInField
//
//  Created by Jim Wang on 6/30/16.
//  Copyright © 2016 Jim Wang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CustomTextField : NSTextField

@end

@interface CustomTextfieldCell : NSTextFieldCell

@end

@interface CustomView : NSView

@end

@interface ViewController : NSViewController
{
    IBOutlet NSTextField *text_field_;
	IBOutlet NSTextView *text_view_;
}

@end

