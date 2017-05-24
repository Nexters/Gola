//
//  GolaPulse.m
//  Gola
//
//  Created by 최영준 on 2016. 8. 16..
//  Copyright © 2016년 YJ. All rights reserved.
//

#import "GolaPulse.h"

@implementation GolaPulse

// 지정 초기화 메소드
- (instancetype)initWithRadius:(float)radius scaleToValue:(float)scaleToValue scaleFromValue:(float)scaleFromValue opacityFromValue:(float)opacityFromValue opacityToValue:(float)opacityToValue colorRed:(float)red colorGreen:(float)green colorBlue:(float)blue colorAlpha:(float)alpha duration:(float)duration {
    
    self = [super init];
    
    if (self) {
        self.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(0, 0)
                                                   radius:radius //100
                                               startAngle:180.0*(M_PI/180.0)
                                                 endAngle:0.0*(M_PI/180.0)
                                                clockwise:YES].CGPath;
        CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
        scaleAnimation.fromValue = @(scaleToValue); //0.0
        scaleAnimation.toValue = @(scaleFromValue); //1.0
        
        CABasicAnimation *opacityAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
        opacityAnimation.fromValue = @(opacityFromValue); //1.0
        opacityAnimation.toValue = @(opacityToValue); //0.0
        self.fillColor = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha].CGColor;
        //[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.5].CGColor;
        
        CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
        NSArray *animations = @[scaleAnimation, opacityAnimation];
        animationGroup.duration = duration; //2.0
        
        animationGroup.repeatCount = HUGE_VAL;
        
        animationGroup.animations = animations;
        self.position = self.superlayer.position;
        [self addAnimation:animationGroup forKey:@"pulse"];
    }
    
    return self;
}
@end
