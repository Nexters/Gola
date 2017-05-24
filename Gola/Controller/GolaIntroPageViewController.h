//
//  GolaIntroPageViewController.h
//  Gola
//
//  Created by 최영준 on 2016. 8. 13..
//  Copyright © 2016년 YJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GolaIntroPageViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageController;
@property (retain, nonatomic) NSArray *pages;
@property (retain, nonatomic) NSArray *viewControllers;
@property (assign, nonatomic) NSInteger currentIndex;

@end
