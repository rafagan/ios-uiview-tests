//
//  CustomView.m
//  Aula_11-UIView
//
//  Created by Rafagan on 05/11/13.
//  Copyright (c) 2013 Rafagan Abreu. All rights reserved.
//

#import "CustomPolygonView.h"
#import "RaVec2.h"
#import "MathUtils.h"

@implementation CustomPolygonView
{
    UIBezierPath *primitive;
    CGRect bounds;
    RaVec2* defaultSize;
}

const float GRAUS_360 = 2 * M_PI;

@synthesize color = _color;
@synthesize lineWidth = _lineWidth;
@synthesize fill = _fill;

- (id)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)initialize
{
    self.color = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
    self.lineWidth = 1;
    self.sides = 3;
    bounds = [self bounds];
    defaultSize = [[RaVec2 alloc]init];
    defaultSize.x = 150;
    defaultSize.y = 150;
}

- (void)drawRect:(CGRect)rect
{
    primitive = [[UIBezierPath alloc] init];
    
    RaVec2* pos[self.sides];
    int raio = defaultSize.x / 2;
    
    for(int i=0;i<self.sides;i++){
        pos[i] = [[RaVec2 alloc]init];
        
        float a = (i * GRAUS_360)/self.sides;
        pos[i].x = (raio * cos(a));
        pos[i].y = (raio * sin(a));
    }
    
    [primitive moveToPoint:CGPointMake(pos[0].x + bounds.size.width / 2,pos[0].y + bounds.size.height / 2)];
    for (int i=1; i<self.sides; i++) {
        [primitive addLineToPoint:CGPointMake(pos[i].x + bounds.size.width / 2,pos[i].y + bounds.size.height / 2)];
    }
    [primitive closePath];
    
    [self.color set];
    [self.color setFill];
    [self.color setStroke];
    
    [primitive setLineWidth:self.lineWidth];
    
    self.capRound ? [primitive setLineJoinStyle:kCGLineJoinRound] : [primitive setLineJoinStyle:kCGLineJoinMiter];
    
    self.fill ? [primitive fill] : [primitive stroke];
}

- (void)setColor:(UIColor *)newColor
{
    _color = newColor;
    [self setNeedsDisplay];
}

- (void)setLineWidth:(int)lineWidth
{
    _lineWidth = lineWidth;
    [self setNeedsDisplay];
}

@end
