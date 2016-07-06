//
//  ViewController.m
//  TabsInField
//
//  Created by Jim Wang on 6/30/16.
//  Copyright © 2016 Jim Wang. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSParagraphStyle* style = [NSParagraphStyle defaultParagraphStyle];
    NSFont* fontC = [[NSFontManager sharedFontManager] fontWithFamily:@"Lucida Grande" traits:NSUnboldFontMask|NSUnitalicFontMask weight:5 size:17];
    NSColor* colorC = [NSColor colorWithWhite:0x66/255.0 alpha:1.0];
    NSDictionary* attrC = [NSDictionary dictionaryWithObjectsAndKeys:fontC,NSFontAttributeName,colorC,NSForegroundColorAttributeName,style,NSParagraphStyleAttributeName, nil];
    
    NSAttributedString* attrStr = [[NSAttributedString alloc] initWithString:@"234697967@cet18.qa.webex.com \nFor internal cet18 users, dial 1234567890.\tWe will send an email to users notifying them of the availability of this pilot number. We provided sample text below that you may modify. Replace <sitename> and <Pilot Number> with text specific to your." attributes:attrC];
    [text_field_ setAllowsEditingTextAttributes:YES];
    [text_field_ setAttributedStringValue:attrStr];
	[[text_view_ textStorage] setAttributedString:attrStr];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end

@implementation CustomTextField
//- (void)addSubview:(NSView *)aView
//{
////    NSLog(@"addSubview:%@",NSStringFromRect(aView.bounds));
////    [super addSubview:aView];
//}
//
//- (void)willRemoveSubview:(NSView *)subview
//{
//
//}

- (void)drawRect:(NSRect)dirtyRect
{
    [[NSColor redColor] set];
    NSLog(@"drawRect:%@",NSStringFromRect(self.bounds));
    [[NSBezierPath bezierPathWithRect:self.bounds] fill];
}
@end

@implementation CustomTextfieldCell
- (void)drawInteriorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView
{
    
}

- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView
{
    
}
@end
