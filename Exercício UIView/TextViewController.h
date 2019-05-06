//
//  TextViewController.h
//  Exercício UIView
//
//  Created by Rafagan on 03/12/13.
//  Copyright (c) 2013 Rafagan Abreu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTextView.h"

@interface TextViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *sizeL;
@property (weak, nonatomic) IBOutlet UIStepper *sizeStepper;
@property (weak, nonatomic) IBOutlet UISwitch *boldSwtch;
@property (weak, nonatomic) IBOutlet UISwitch *italicSwitch;
@property (weak, nonatomic) IBOutlet UISegmentedControl *alignSegCtrl;
@property (weak, nonatomic) IBOutlet UISlider *redColorSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenColorSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueColorSlider;
@property (weak, nonatomic) IBOutlet UISlider *alphaColorSlider;
@property (weak, nonatomic) IBOutlet CustomTextView *textView;


- (IBAction)onBoldChanged:(id)sender;
- (IBAction)onItalicChanged:(id)sender;
- (IBAction)onSegCtrlChanged:(id)sender;
- (IBAction)onGreenColorChanged:(id)sender;
- (IBAction)onBlueColorChanged:(id)sender;
- (IBAction)onAlphaColorChanged:(id)sender;
- (IBAction)onRedColorChanged:(id)sender;
- (IBAction)onStepperChanged:(id)sender;

@end
