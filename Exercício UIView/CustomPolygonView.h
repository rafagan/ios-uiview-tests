//
//  CustomView.h
//  Aula_11-UIView
//
//  Created by Rafagan on 05/11/13.
//  Copyright (c) 2013 Rafagan Abreu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomPolygonView : UIView

@property(nonatomic,strong,setter = setColor:)UIColor *color;
@property(nonatomic,setter = setLineWidth:)int lineWidth;
@property(nonatomic)int sides;
@property(nonatomic)BOOL fill;
@property(nonatomic)BOOL capRound;

- (void)setColor:(UIColor *)newColor;
- (void)setLineWidth:(int)lineWidth;
- (void)initialize;

@end
