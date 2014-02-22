//
//  KCColorSlider.m
//  ColorSliders
//
//  Created by Kevin Chavez on 25/3/13.
//  Copyright (c) 2013 Kevin Chavez. All rights reserved.
//

#import "KCColorSlider.h"

@implementation KCColorSlider

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self != nil) {
        [self addTarget:self action:@selector(valueChanged) forControlEvents:UIControlEventValueChanged];
        [self setMaximumValue:1.0];[self setMinimumValue:0.0];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:@"KCColorSliderColorDidChange" object:_color];
    }
    return self;
}

- (void)handleNotification:(NSNotification *)notification {
    NSLog(@"NOTIFICAITION: %@", [notification object]);
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self addTarget:self action:@selector(valueChanged) forControlEvents:UIControlEventValueChanged];
        [self setMaximumValue:1.0];[self setMinimumValue:0.0];
    }
return self;
}


- (void)valueChanged {
    
    CGFloat hue = 0.0, sat = 0.0, bright = 0.0, alpha = 0.0;
    [_color getHue:&hue saturation:&sat brightness:&bright alpha:&alpha];
    
    _color = [UIColor colorWithHue:[self value]
                           saturation:sat
                           brightness:bright
                                alpha:alpha];
    
    
    if ([self value] < .2f) {
        [self setMinimumTrackTintColor:[UIColor whiteColor]];
        [self setMaximumTrackTintColor:_color];
    } else {
        [self setMinimumTrackTintColor:_color];
        [self setMaximumTrackTintColor:[UIColor whiteColor]];
    }
    
    //NSDictionary *dict = [
    NSNotification *note = [NSNotification notificationWithName:@"KCColorSliderColorDidChange" object:_color userInfo:nil];
    
    [[NSNotificationCenter defaultCenter] postNotification:note];
}

@end
