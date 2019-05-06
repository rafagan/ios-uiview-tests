//
//  ViewController.h
//  Exercício UIView
//
//  Created by Rafagan on 07/11/13.
//  Copyright (c) 2013 Rafagan Abreu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomPolygonView.h"

@interface PolygonViewController : UIViewController

@property (weak, nonatomic) IBOutlet CustomPolygonView *polygonView;

@property (weak, nonatomic) IBOutlet UISlider *lineWidthSlider;
- (IBAction)onLineWidthSliderChange:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *sidesLabel;
@property (weak, nonatomic) IBOutlet UIStepper *sideStepper;
- (IBAction)onSideStepperChange:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segCtrlFill;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segCtrlCap;
- (IBAction)onSegCtrlFillChange:(id)sender;
- (IBAction)onSegCtrlCapChange:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider;
- (IBAction)onRedSliderChange:(id)sender;
- (IBAction)onGreenSliderChange:(id)sender;
- (IBAction)onBlueSliderChange:(id)sender;
- (IBAction)onAlphaSliderChange:(id)sender;

@end
