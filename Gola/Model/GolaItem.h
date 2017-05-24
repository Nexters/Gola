//
//  GolaItem.h
//  Gola
//
//  Created by 최영준 on 2016. 7. 15..
//  Copyright © 2016년 Gola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface GolaItem : NSObject

@property (copy, nonatomic) NSString *itemName;
@property (nonatomic) int itemNumber;
@property (strong, nonatomic) UIImage *itemImage;

+ (instancetype)randomItem;
- (instancetype)initWithItemName:(NSString *)name itemNumber:(int)number itemImage:(UIImage *)image;
- (instancetype)resetItem;

@end
