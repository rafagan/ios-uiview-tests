//
//  CustomTextView.h
//  Exercício UIView
//
//  Created by Rafagan on 03/12/13.
//  Copyright (c) 2013 Rafagan Abreu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTextView : UIView

@property (nonatomic) BOOL bold;
@property (nonatomic) BOOL italic;
@property (nonatomic) NSInteger aligment;
@property (nonatomic) NSInteger size;
@property (nonatomic,strong) NSString* text;

@property(nonatomic,strong,setter = setColor:)UIColor *color;

- (void)initialize;
- (void)setColor:(UIColor *)newColor;

@end
