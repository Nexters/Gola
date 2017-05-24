//
//  GolaRandomViewController.h
//  Gola
//
//  Created by 최영준 on 2016. 7. 16..
//  Copyright © 2016년 Gola. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface GolaRandomViewController : UIViewController <CLLocationManagerDelegate>

// locaiton
@property (nonatomic, assign) BOOL bGotUserLocation;
@property (nonatomic, strong) CLLocationManager* locationManager;
@property (nonatomic, assign) CLLocationCoordinate2D userCoordinate;

@end
