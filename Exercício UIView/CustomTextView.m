//
//  CustomTextView.m
//  Exercício UIView
//
//  Created by Rafagan on 03/12/13.
//  Copyright (c) 2013 Rafagan Abreu. All rights reserved.
//

#import "CustomTextView.h"
#import "RaVec2.h"

@implementation CustomTextView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)initialize
{
    _bold = false;
    _italic = false;
    _aligment = 0;
    _size = 20;
    _text = @"Hello World";
    _color = self.color = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
}

- (void)drawRect:(CGRect)rect
{
    CGRect textRect = CGRectMake(0, self.bounds.size.height/2 - _size/2, self.bounds.size.width, self.bounds.size.height);
    
    //Font
    NSString* fontName;
    if(self.bold && self.italic) {
        fontName = @"Helvetica-BoldOblique";
    }
    else if (self.bold) {
        fontName = @"Helvetica-Bold";
    } else if(self.italic) {
        fontName = @"Helvetica-Oblique";
    } else {
        fontName = @"Helvetica";
    }
    
    NSTextAlignment* al;
    switch (_aligment) {
        case 1:
            al = UITextAlignmentCenter;
            break;
        case 2:
            al = UITextAlignmentRight;
            break;
        default:
            al = UITextAlignmentLeft;
            break;
    }
    
    UIFont* font;
    font = [UIFont fontWithName:fontName size:_size];

    [_color setFill];
    [_text drawInRect:textRect withFont:font lineBreakMode:UILineBreakModeWordWrap alignment:al];
}

@end
