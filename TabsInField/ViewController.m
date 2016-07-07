//
//  ViewController.m
//  TabsInField
//
//  Created by Jim Wang on 6/30/16.
//  Copyright © 2016 Jim Wang. All rights reserved.
//

#import "ViewController.h"

NSAttributedString* sampleStr()
{
    NSMutableParagraphStyle* paragraphStyle = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    paragraphStyle.firstLineHeadIndent = FLT_MIN;
//    NSTextTab* textTab = [[NSTextTab alloc] initWithTextAlignment:NSTextAlignmentLeft location:28 options:[NSDictionary dictionary]];
//    paragraphStyle.tabStops = [NSArray arrayWithObject:textTab];
    //paragraphStyle.firstLineHeadIndent = FLT_MIN;
    NSFont* fontC = [[NSFontManager sharedFontManager] fontWithFamily:@"Lucida Grande" traits:NSUnboldFontMask|NSUnitalicFontMask weight:5 size:17];
    NSColor* colorC = [NSColor colorWithWhite:0x66/255.0 alpha:1.0];
    NSDictionary* attrC = [NSDictionary dictionaryWithObjectsAndKeys:fontC,NSFontAttributeName,colorC,NSForegroundColorAttributeName,paragraphStyle,NSParagraphStyleAttributeName, nil];
    
    NSAttributedString* attrStr = [[NSAttributedString alloc] initWithString:@"234697967@cet18.qa.webex.com \nFor internal cet18 users, dial 1234567890.\tWe will send an email to users notifying them of the availability of this pilot number. We provided sample text below that you may modify. Replace <sitename> and <Pilot Number> with text specific to your." attributes:attrC];
    return attrStr;
}

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [text_field_ setAllowsEditingTextAttributes:YES];
    [text_field_ setAttributedStringValue:sampleStr()];
	[[text_view_ textStorage] setAttributedString:sampleStr()];
    
    [text_field_ setHidden:NO];
    [[text_view_ enclosingScrollView] setHidden:NO];
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

//- (void)drawRect:(NSRect)dirtyRect
//{
//    [[NSColor redColor] set];
//    NSLog(@"drawRect:%@",NSStringFromRect(self.bounds));
//    [[NSBezierPath bezierPathWithRect:self.bounds] fill];
//}
@end

@implementation CustomTextfieldCell
//- (void)drawInteriorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView
//{
//    //[sampleStr() drawInRect:NSInsetRect(cellFrame, 4, 4)];
//    [sampleStr() drawWithRect:NSInsetRect(cellFrame, 4, 4) options:NSStringDrawingUsesLineFragmentOrigin];
//    NSFrameRect(NSInsetRect(cellFrame, 4, 4));
//}
//
//- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView
//{
//    
//}
@end

@implementation CustomView
- (void)drawRect:(NSRect)dirtyRect
{
//    NSParagraphStyle* style = [NSParagraphStyle defaultParagraphStyle];
//    NSFont* fontC = [[NSFontManager sharedFontManager] fontWithFamily:@"Lucida Grande" traits:NSUnboldFontMask|NSUnitalicFontMask weight:5 size:17];
//    NSColor* colorC = [NSColor colorWithWhite:0x66/255.0 alpha:1.0];
//    NSDictionary* attrC = [NSDictionary dictionaryWithObjectsAndKeys:fontC,NSFontAttributeName,colorC,NSForegroundColorAttributeName,style,NSParagraphStyleAttributeName, nil];
//    
//    [sampleStr().string drawAtPoint:NSZeroPoint withAttributes:attrC];
//    [sampleStr() drawInRect:self.bounds];
    [sampleStr() drawWithRect:self.bounds options:NSStringDrawingUsesLineFragmentOrigin];
}

- (BOOL)isFlipped
{
    return YES;
}
@end
