//
//  GolaPulse.h
//  Gola
//
//  Created by 최영준 on 2016. 8. 16..
//  Copyright © 2016년 YJ. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface GolaPulse : CAShapeLayer

- (instancetype)initWithRadius:(float)radius scaleToValue:(float)scaleToValue scaleFromValue:(float)scaleFromValue opacityFromValue:(float)opacityFromValue opacityToValue:(float)opacityToValue colorRed:(float)red colorGreen:(float)green colorBlue:(float)blue colorAlpha:(float)alpha duration:(float)duration;

@end
