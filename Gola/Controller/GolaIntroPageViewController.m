//
//  GolaIntroPageViewController.m
//  Gola
//
//  Created by 최영준 on 2016. 8. 13..
//  Copyright © 2016년 YJ. All rights reserved.
//

#import "GolaIntroPageViewController.h"
#import "GolaIntro01ViewController.h"
#import "GolaIntro02ViewController.h"
#import "GolaIntro03ViewController.h"

@implementation GolaIntroPageViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageController.dataSource = self;
    [[self.pageController view] setFrame:[[self view] bounds]];
    
    GolaIntro01ViewController *intro01ViewController = [[GolaIntro01ViewController alloc] init];
    GolaIntro02ViewController *intro02ViewController = [[GolaIntro02ViewController alloc] init];
    GolaIntro03ViewController *intro03ViewController = [[GolaIntro03ViewController alloc] init];
    
    _pages = @[intro01ViewController, intro02ViewController, intro03ViewController];
    
    _viewControllers = @[[_pages objectAtIndex:_currentIndex]];
    
    [self.pageController setViewControllers:_viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
    
    self.automaticallyAdjustsScrollViewInsets=NO;
}


- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [_pages indexOfObject:viewController];
    _currentIndex = index;
    
    if (index == 0) {
        // 배경 색 변경
        [self.view setBackgroundColor:[UIColor colorWithRed:58/255.0f green:41/255.0f blue:157/255.0f alpha:1.0f]];
        
        return nil;
    }

    index--;

    return [_pages objectAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [_pages indexOfObject:viewController];
    _currentIndex = index;
    
    index++;
    
    if (index == [_pages count]) {
        // 배경 색 변경
        [self.view setBackgroundColor:[UIColor colorWithRed:16/255.0f green:99/255.0f blue:238/255.0f alpha:1.0f]];
        
        return nil;
    }
    
    return [_pages objectAtIndex:index];
}


@end
