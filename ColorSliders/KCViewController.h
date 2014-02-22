//
//  KCViewController.h
//  ColorSliders
//
//  Created by Kevin Chavez on 25/3/13.
//  Copyright (c) 2013 Kevin Chavez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KCColorSlider.h"

@interface KCViewController : UIViewController

@property UIColor *color;
@property UIColor *hueColor;
@property UIColor *subColor;

@property (weak, nonatomic) IBOutlet KCColorSlider *subSlider;
@property (weak, nonatomic) IBOutlet KCColorSlider *subSlider2;

- (IBAction)slideRed:(UISlider *)sender;
- (IBAction)slideGreen:(UISlider *)sender;
- (IBAction)slideBlue:(UISlider *)sender;

- (IBAction)slideHue:(UISlider *)sender;
@end
