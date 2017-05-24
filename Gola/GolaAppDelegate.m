//
//  AppDelegate.m
//  Gola
//
//  Created by 최영준 on 2016. 7. 15..
//  Copyright © 2016년 YJ. All rights reserved.
//

#import "GolaAppDelegate.h"
#import "GolaMainViewController.h"
#import "GolaIntroPageViewController.h"

@interface GolaAppDelegate ()

@end

@implementation GolaAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
                                                   
    // Override point for customization after application launch.
    
    // 스플래쉬 화면 보여주는 시간
    [NSThread sleepForTimeInterval:1.0];
    
    // 앱 다운 후 최초로 한번만 보여주는 intro 뷰
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"HasLaunchedOnce"]) {
        
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"HasLaunchedOnce"];
        [[NSUserDefaults standardUserDefaults] synchronize];

        GolaIntroPageViewController *introPageViewController = [[GolaIntroPageViewController alloc] init];
        [self.window setRootViewController:introPageViewController];
        
    }
    else {
        // GolaMainViewController를 만든다
        GolaMainViewController *mainViewController = [[GolaMainViewController alloc] init];
        
        // mainViewController만을 표현한 UINavigationController 인스턴스를 만든다
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
        
        // 윈도우 계층 구조에 네비게이션 컨트롤러의 뷰를 놓는다
        [self.window setRootViewController:navController];
    }
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
