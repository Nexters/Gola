//
//  GollaTournamentResultViewController.h
//  Gola
//
//  Created by 최영준 on 2016. 7. 16..
//  Copyright © 2016년 Golla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "GolaItem.h"

@interface GolaTournamentResultViewController : UIViewController <CLLocationManagerDelegate>

// locaiton
@property (nonatomic, assign) BOOL bGotUserLocation;
@property (nonatomic, strong) CLLocationManager* locationManager;
@property (nonatomic, assign) CLLocationCoordinate2D userCoordinate;

- (instancetype)initWithItem:(GolaItem *)item;

@end
