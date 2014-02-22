//
//  KCViewController.m
//  ColorSliders
//
//  Created by Kevin Chavez on 25/3/13.
//  Copyright (c) 2013 Kevin Chavez. All rights reserved.
//

#import "KCViewController.h"

@interface KCViewController ()

@end

@implementation KCViewController

@synthesize color = _color, hueColor =_hueColor, subSlider = _subSlider;

- (void)viewDidLoad
{
    _hueColor = [UIColor greenColor];
    _subColor = [UIColor greenColor];
    
    [_subSlider setColor:_subColor];
    [_subSlider2 setColor:_subColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slideRed:(UISlider *)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
    [_color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    _color = [UIColor colorWithRed:[sender value] green:green blue:blue alpha:1.0];
    [sender setMinimumTrackTintColor:_color];
}

- (IBAction)slideGreen:(UISlider *)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
    [_color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    _color = [UIColor colorWithRed:red green:[sender value] blue:blue alpha:1.0];
    [sender setMinimumTrackTintColor:_color];}

- (IBAction)slideBlue:(UISlider *)sender {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
    [_color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    _color = [UIColor colorWithRed:red green:green blue:[sender value] alpha:1.0];
    [sender setMinimumTrackTintColor:_color];}

- (IBAction)slideHue:(UISlider *)sender {
    CGFloat hue = 0.0, sat = 0.0, bright = 0.0, alpha = 0.0;
    [_hueColor getHue:&hue saturation:&sat brightness:&bright alpha:&alpha];
    NSLog(@"%f", hue);

    _hueColor = [UIColor colorWithHue:[sender value]
                        saturation:sat
                        brightness:bright
                             alpha:alpha];
    
    
    if ([sender value] < .2f) {
        [sender setMinimumTrackTintColor:[UIColor whiteColor]];
        [sender setMaximumTrackTintColor:_hueColor];
    } else {
        [sender setMinimumTrackTintColor:_hueColor];
        [sender setMaximumTrackTintColor:[UIColor whiteColor]];
    }

}
@end
