//
//  ViewController.m
//  Exercício UIView
//
//  Created by Rafagan on 07/11/13.
//  Copyright (c) 2013 Rafagan Abreu. All rights reserved.
//

#import "PolygonViewController.h"

@interface PolygonViewController ()

@end

@implementation PolygonViewController

@synthesize sideStepper;
@synthesize lineWidthSlider;
@synthesize sidesLabel;
@synthesize segCtrlFill,segCtrlCap;
@synthesize redSlider,greenSlider,blueSlider,alphaSlider;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self.tabBarItem setTitle:@"Polygon"];
        [self.tabBarItem setImage:[UIImage imageNamed:@"Polygon"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    sideStepper.minimumValue = 3;
    sideStepper.maximumValue = 20;
    sideStepper.wraps = YES;
    sideStepper.value = 3;
    
    lineWidthSlider.minimumValue = 1;
    lineWidthSlider.maximumValue = 20;
    
    redSlider.minimumValue = 0;
    redSlider.maximumValue = 1;
    
    [sidesLabel setText:[NSString stringWithFormat:@"%d",(int)sideStepper.value]];
    
    [self.polygonView initialize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSideStepperChange:(id)sender {
    [sidesLabel setText:[NSString stringWithFormat:@"%d",(int)sideStepper.value]];
    self.polygonView.sides = (int)sideStepper.value;
    [self.polygonView setNeedsDisplay];
}

- (IBAction)onLineWidthSliderChange:(id)sender {
    self.polygonView.lineWidth = (int)lineWidthSlider.value;
    [self.polygonView setNeedsDisplay];
}

- (void)onSegCtrlFillChange:(id)sender {
    switch (segCtrlFill.selectedSegmentIndex) {
        case 0:
            self.polygonView.fill = NO;
            break;
        case 1:
            self.polygonView.fill = YES;
            break;
    }
    [self.polygonView setNeedsDisplay];
}

- (IBAction)onRedSliderChange:(id)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
    [self.polygonView.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.polygonView.color = [UIColor colorWithRed:redSlider.value green:green blue:blue alpha:alpha];
    [self.polygonView setNeedsDisplay];
}

- (IBAction)onGreenSliderChange:(id)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
    [self.polygonView.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.polygonView.color = [UIColor colorWithRed:red green:greenSlider.value blue:blue alpha:alpha];
    [self.polygonView setNeedsDisplay];
}

- (IBAction)onBlueSliderChange:(id)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
    [self.polygonView.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.polygonView.color = [UIColor colorWithRed:red green:green blue:blueSlider.value alpha:alpha];
    [self.polygonView setNeedsDisplay];
}

- (IBAction)onAlphaSliderChange:(id)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
    [self.polygonView.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.polygonView.color = [UIColor colorWithRed:red green:green blue:blue alpha:alphaSlider.value];
    [self.polygonView setNeedsDisplay];
}

- (IBAction)onSegCtrlCapChange:(id)sender {
    switch (segCtrlCap.selectedSegmentIndex) {
        case 0:
            self.polygonView.capRound = NO;
            break;
        case 1:
            self.polygonView.capRound = YES;
            break;
    }
    NSLog(@"");
    [self.polygonView setNeedsDisplay];
}
@end
