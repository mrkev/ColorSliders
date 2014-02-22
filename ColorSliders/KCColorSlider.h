//
//  KCColorSlider.h
//  ColorSliders
//
//  Created by Kevin Chavez on 25/3/13.
//  Copyright (c) 2013 Kevin Chavez. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    KCColorSliderRed,
    KCColorSliderGreen,
    KCColorSliderBlue,
    KCColorSliderHue,
    KCColorSliderSaturation,
    KCColorSliderBrightness
} KCColorSliderType;

@interface KCColorSlider : UISlider

@property (nonatomic) KCColorSliderType type;
@property (nonatomic) UIColor *color;

@end
