//
//  GolaImageStore.h
//  Gola
//
//  Created by 최영준 on 2016. 7. 15..
//  Copyright © 2016년 Gola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GolaImageStore : NSObject

@property (strong, nonatomic) NSDictionary *imageStore;

+ (instancetype)initImageStore;

@end
