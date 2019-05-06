//
//  TextViewController.m
//  Exercício UIView
//
//  Created by Rafagan on 03/12/13.
//  Copyright (c) 2013 Rafagan Abreu. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController

@synthesize redColorSlider,blueColorSlider,greenColorSlider,alphaColorSlider;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self.tabBarItem setTitle:@"Text"];
        [self.tabBarItem setImage:[UIImage imageNamed:@"Text-1"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sizeStepper.value = 20;
    self.sizeStepper.minimumValue = 3;
    self.sizeStepper.maximumValue = 50;
    self.sizeL.text = @"20";
    
    self.redColorSlider.value = 0;
    self.greenColorSlider.value = 0;
    self.blueColorSlider.value = 0;
    self.alphaColorSlider.value = 1;
    
    self.redColorSlider.minimumValue = 0;
    self.redColorSlider.maximumValue = 1;
    self.greenColorSlider.minimumValue = 0;
    self.greenColorSlider.maximumValue = 1;
    self.blueColorSlider.minimumValue = 0;
    self.blueColorSlider.maximumValue = 1;
    self.alphaColorSlider.minimumValue = 0;
    self.alphaColorSlider.maximumValue = 1;
    
    self.boldSwtch.on = NO;
    self.italicSwitch.on = NO;
    
    [self.textView initialize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBoldChanged:(id)sender {
    self.textView.bold = self.boldSwtch.on;
    [self.textView setNeedsDisplay];
}

- (IBAction)onItalicChanged:(id)sender {
    self.textView.italic = self.italicSwitch.on;
    [self.textView setNeedsDisplay];
}

- (IBAction)onSegCtrlChanged:(id)sender {
    self.textView.aligment = self.alignSegCtrl.selectedSegmentIndex;
    [self.textView setNeedsDisplay];
}

- (IBAction)onRedColorChanged:(id)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
    [self.textView.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.textView.color = [UIColor colorWithRed:redColorSlider.value green:green blue:blue alpha:alpha];
    [self.textView setNeedsDisplay];
}

- (IBAction)onStepperChanged:(id)sender {
    [self.sizeL setText:[NSString stringWithFormat:@"%d",(int)self.sizeStepper.value]];
    self.textView.size = (int)self.sizeStepper.value;
    [self.textView setNeedsDisplay];
}

- (IBAction)onGreenColorChanged:(id)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
    [self.textView.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.textView.color = [UIColor colorWithRed:red green:greenColorSlider.value blue:blue alpha:alpha];
    [self.textView setNeedsDisplay];
}

- (IBAction)onBlueColorChanged:(id)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
    [self.textView.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.textView.color = [UIColor colorWithRed:red green:green blue:blueColorSlider.value alpha:alpha];
    [self.textView setNeedsDisplay];
}

- (IBAction)onAlphaColorChanged:(id)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
    [self.textView.color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.textView.color = [UIColor colorWithRed:red green:green blue:blue alpha:alphaColorSlider.value];
    [self.textView setNeedsDisplay];
}
@end
