//
//  GolaTournamentResultViewController.m
//  Gola
//
//  Created by 최영준 on 2016. 7. 16..
//  Copyright © 2016년 Gola. All rights reserved.
//

#import "GolaTournamentResultViewController.h"
#import "GolaTournamentViewController.h"
#import "GolaRandomViewController.h"

@interface GolaTournamentResultViewController () {
    
    double topViewHeightDefault;
    double homeButtonTopDefault;
    double homeButtonLeadingDefault;
    double homeButtonHeightDefault;
    double logoHeightDefault;
    double logoWidthDefault;
    double restartButtonTopDefault;
    double restartButtonTrailingDefault;
    double restartButtonHeightDefault;
    double imageViewTopDefault;
    double imageViewLeadingDefault;
    double imageViewTrailingDefault;
    double imageViewHeightDefault;
    double patternTopDefault;
    double patternLeadingDefault;
    double patternTrailingDefault;
    double patternHeightDefault;
    double label01TopDefault;
    double label02BottomDefault;
    double onemoreButtonLeadingDefault;
    double onemoreButtonTrailingDefault;
    double onemoreButtonBottomDefault;
    double onemoreButtonHeightDefault;
    double onemoreButtonWidthDefault;
    double randomButtonTrailingDefault;
    double randomButtonBottomDefault;
}

@property (copy, nonatomic) NSString *itemName;
@property (nonatomic) int itemNumber;
@property (strong, nonatomic) UIImage *itemImage;
@property (weak, nonatomic) IBOutlet UIImageView *resultImageView;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

#pragma mark - TopView 프로퍼티, 제약조건
// 제약조건
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *homeButtonTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *homeButtonLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *homeButtonHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *logoHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *logoWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *restartButtonTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *restartButtonTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *restartButtonHeight;

#pragma mark - ContentView 프로퍼티, 제약조건
// 제약조건
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *patternTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *patternLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *patternTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *patternHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *label01Top;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *label02Bottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *onemoreButtonLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *onemoreButtonTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *onemoreButtonBottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *onemoreButtonHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *onemoreButtonWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *randomButtonTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *randomButtonBottom;


@end

@implementation GolaTournamentResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 상태 바 색상을 바꾼다
    [self setNeedsStatusBarAppearanceUpdate];
    
    // 이미지 뷰 테두리를 둥글게 만든다
    [_resultImageView.layer setCornerRadius:10];
    [_resultImageView.layer setMasksToBounds:YES];
    
    [_resultImageView setImage:_itemImage];
    [_resultLabel setText:_itemName];
    
    // Auto Layout 기본 값 아이폰 5.5inch
    topViewHeightDefault = 80;
    homeButtonTopDefault = 16;
    homeButtonLeadingDefault = 24;
    homeButtonHeightDefault = 33;
    logoHeightDefault = 37;
    logoWidthDefault = 67;
    restartButtonTopDefault = 16;
    restartButtonTrailingDefault = 24;
    restartButtonHeightDefault = 33;
    imageViewTopDefault = 20;
    imageViewLeadingDefault = 27;
    imageViewTrailingDefault = 27;
    imageViewHeightDefault = 250;
    patternTopDefault = 34;
    patternLeadingDefault = 48;
    patternTrailingDefault = 48;
    patternHeightDefault = 93;
    label01TopDefault = 38;
    label02BottomDefault = 12;
    onemoreButtonLeadingDefault = 42;
    onemoreButtonTrailingDefault = 10;
    onemoreButtonBottomDefault = 30;
    onemoreButtonHeightDefault = 80;
    onemoreButtonWidthDefault = 160;
    randomButtonTrailingDefault = 42;
    randomButtonBottomDefault = 30;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    // rano
    self.resultImageView.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *aTapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onClickResultImageView)];
    aTapGesture.numberOfTapsRequired = 1;
    [self.resultImageView addGestureRecognizer:aTapGesture];
    
}

// 기기에 따라서 사이즈를 다르게 한다
- (void)updateViewConstraints {
    
    [super updateViewConstraints];
    
    // 아이폰 3.5인치 0.652
    if ([UIScreen mainScreen].bounds.size.height == 480) {
        
        _resultLabel.font = [_resultLabel.font fontWithSize:34];
        
        _topViewHeight.constant = topViewHeightDefault * 0.652;
        _homeButtonTop.constant = homeButtonTopDefault * 0.652;
        _homeButtonLeading.constant = homeButtonLeadingDefault * 0.652;
        _homeButtonHeight.constant = homeButtonHeightDefault * 0.652;
        _logoHeight.constant = logoHeightDefault * 0.652;
        _logoWidth.constant = logoWidthDefault * 0.652;
        _restartButtonTop.constant = restartButtonTopDefault * 0.652;
        _restartButtonTrailing.constant = restartButtonTrailingDefault * 0.652;
        _restartButtonHeight.constant = restartButtonHeightDefault * 0.652;
        _imageViewTop.constant = imageViewTopDefault * 0.652;
        _imageViewLeading.constant = imageViewLeadingDefault * 0.652;
        _imageViewTrailing.constant = imageViewTrailingDefault * 0.652;
        _imageViewHeight.constant = imageViewHeightDefault * 0.652;
        _patternTop.constant = patternTopDefault * 0.652;
        _patternLeading.constant = patternLeadingDefault * 0.652;
        _patternTrailing.constant = patternTrailingDefault * 0.652;
        _patternHeight.constant = patternHeightDefault * 0.652;
        _label01Top.constant = label01TopDefault * 0.652;
        _label02Bottom.constant = label02BottomDefault * 0.652;
        _onemoreButtonLeading.constant = onemoreButtonLeadingDefault * 0.652;
        _onemoreButtonTrailing.constant = onemoreButtonTrailingDefault * 0.652;
        _onemoreButtonBottom.constant = onemoreButtonBottomDefault * 0.652;
        _onemoreButtonHeight.constant = onemoreButtonHeightDefault * 0.652;
        _onemoreButtonWidth.constant = onemoreButtonWidthDefault * 0.652;
        _randomButtonTrailing.constant = randomButtonTrailingDefault * 0.652;
        _randomButtonBottom.constant = randomButtonBottomDefault * 0.652;
    }
    // 아이폰 4인치 0.77
    else if ([UIScreen mainScreen].bounds.size.height == 568) {
        
        _resultLabel.font = [_resultLabel.font fontWithSize:36];
        
        _topViewHeight.constant = topViewHeightDefault * 0.77;
        _homeButtonTop.constant = homeButtonTopDefault * 0.77;
        _homeButtonLeading.constant = homeButtonLeadingDefault * 0.77;
        _homeButtonHeight.constant = homeButtonHeightDefault * 0.77;
        _logoHeight.constant = logoHeightDefault * 0.77;
        _logoWidth.constant = logoWidthDefault * 0.77;
        _restartButtonTop.constant = restartButtonTopDefault * 0.77;
        _restartButtonTrailing.constant = restartButtonTrailingDefault * 0.77;
        _restartButtonHeight.constant = restartButtonHeightDefault * 0.77;
        _imageViewTop.constant = imageViewTopDefault * 0.77;
        _imageViewLeading.constant = imageViewLeadingDefault * 0.77;
        _imageViewTrailing.constant = imageViewTrailingDefault * 0.77;
        _imageViewHeight.constant = imageViewHeightDefault * 0.77;
        _patternTop.constant = patternTopDefault * 0.77;
        _patternLeading.constant = patternLeadingDefault * 0.77;
        _patternTrailing.constant = patternTrailingDefault * 0.77;
        _patternHeight.constant = patternHeightDefault * 0.77;
        _label01Top.constant = label01TopDefault * 0.77;
        _label02Bottom.constant = label02BottomDefault * 0.77;
        _onemoreButtonLeading.constant = onemoreButtonLeadingDefault * 0.77;
        _onemoreButtonTrailing.constant = onemoreButtonTrailingDefault * 0.77;
        _onemoreButtonBottom.constant = onemoreButtonBottomDefault * 0.77;
        _onemoreButtonHeight.constant = onemoreButtonHeightDefault * 0.77;
        _onemoreButtonWidth.constant = onemoreButtonWidthDefault * 0.77;
        _randomButtonTrailing.constant = randomButtonTrailingDefault * 0.77;
        _randomButtonBottom.constant = randomButtonBottomDefault * 0.77;
    }
    
    // 아이폰 4.7인치 0.9
    else if ([UIScreen mainScreen].bounds.size.height == 667) {
        
        _resultLabel.font = [_resultLabel.font fontWithSize:38];
        
        _topViewHeight.constant = topViewHeightDefault * 0.9;
        _homeButtonTop.constant = homeButtonTopDefault * 0.9;
        _homeButtonLeading.constant = homeButtonLeadingDefault * 0.9;
        _homeButtonHeight.constant = homeButtonHeightDefault * 0.9;
        _logoHeight.constant = logoHeightDefault * 0.9;
        _logoWidth.constant = logoWidthDefault * 0.9;
        _restartButtonTop.constant = restartButtonTopDefault * 0.9;
        _restartButtonTrailing.constant = restartButtonTrailingDefault * 0.9;
        _restartButtonHeight.constant = restartButtonHeightDefault * 0.9;
        _imageViewTop.constant = imageViewTopDefault * 0.9;
        _imageViewLeading.constant = imageViewLeadingDefault * 0.9;
        _imageViewTrailing.constant = imageViewTrailingDefault * 0.9;
        _imageViewHeight.constant = imageViewHeightDefault * 0.9;
        _patternTop.constant = patternTopDefault * 0.9;
        _patternLeading.constant = patternLeadingDefault * 0.9;
        _patternTrailing.constant = patternTrailingDefault * 0.9;
        _patternHeight.constant = patternHeightDefault * 0.9;
        _label01Top.constant = label01TopDefault * 0.9;
        _label02Bottom.constant = label02BottomDefault * 0.9;
        _onemoreButtonLeading.constant = onemoreButtonLeadingDefault * 0.9;
        _onemoreButtonTrailing.constant = onemoreButtonTrailingDefault * 0.9;
        _onemoreButtonBottom.constant = onemoreButtonBottomDefault * 0.9;
        _onemoreButtonHeight.constant = onemoreButtonHeightDefault * 0.9;
        _onemoreButtonWidth.constant = onemoreButtonWidthDefault * 0.9;
        _randomButtonTrailing.constant = randomButtonTrailingDefault * 0.9;
        _randomButtonBottom.constant = randomButtonBottomDefault * 0.9;
    }
    // 아이폰 5.5인치
    else if ([UIScreen mainScreen].bounds.size.height == 736) {
        
        _resultLabel.font = [_resultLabel.font fontWithSize:42];
        
        _topViewHeight.constant = topViewHeightDefault;
        _homeButtonTop.constant = homeButtonTopDefault;
        _homeButtonLeading.constant = homeButtonLeadingDefault;
        _homeButtonHeight.constant = homeButtonHeightDefault;
        _logoHeight.constant = logoHeightDefault;
        _logoWidth.constant = logoWidthDefault;
        _restartButtonTop.constant = restartButtonTopDefault;
        _restartButtonTrailing.constant = restartButtonTrailingDefault;
        _restartButtonHeight.constant = restartButtonHeightDefault;
        _imageViewTop.constant = imageViewTopDefault;
        _imageViewLeading.constant = imageViewLeadingDefault;
        _imageViewTrailing.constant = imageViewTrailingDefault;
        _imageViewHeight.constant = imageViewHeightDefault;
        _patternTop.constant = patternTopDefault;
        _patternLeading.constant = patternLeadingDefault;
        _patternTrailing.constant = patternTrailingDefault;
        _patternHeight.constant = patternHeightDefault;
        _label01Top.constant = label01TopDefault;
        _label02Bottom.constant = label02BottomDefault;
        _onemoreButtonLeading.constant = onemoreButtonLeadingDefault;
        _onemoreButtonTrailing.constant = onemoreButtonTrailingDefault;
        _onemoreButtonBottom.constant = onemoreButtonBottomDefault;
        _onemoreButtonHeight.constant = onemoreButtonHeightDefault;
        _onemoreButtonWidth.constant = onemoreButtonWidthDefault;
        _randomButtonTrailing.constant = randomButtonTrailingDefault;
        _randomButtonBottom.constant = randomButtonBottomDefault;
    }
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    // 흰 색상으로 변경
    return UIStatusBarStyleLightContent;
}

#pragma mark
#pragma mark - 초기화 메소드

// 지정 초기화 메소드
- (instancetype)initWithItem:(GolaItem *)item {
    
    self = [super init];
    
    if (self) {
        _itemName = item.itemName;
        _itemNumber = item.itemNumber;
        _itemImage = item.itemImage;
    }
    
    return self;
}

#pragma mark
#pragma mark - 액션 메소드

// 종료하고 main 뷰로 이동
- (IBAction)exitTapped:(id)sender {
    
    NSLog(@"exitTapped");
    // 현재 뷰와 상위뷰를 pop한다
    [self.navigationController popToRootViewControllerAnimated:NO];
   
}

// 토너먼트를 다시 시작한다
- (IBAction)restartTapped:(id)sender {
    
    NSLog(@"restartTapped");
    // 현재 뷰를 pop한다
    [self.navigationController popViewControllerAnimated:NO];
}

- (IBAction)onemoreTapped:(id)sender {
    
    NSLog(@"onemoreTapped");
    // 현재 뷰를 pop한다
    [self.navigationController popViewControllerAnimated:NO];
}

- (IBAction)randomTapped:(id)sender {
    
    NSLog(@"randomTapped");
    
    GolaRandomViewController *randomViewController = [[GolaRandomViewController alloc] init];
    [self.navigationController pushViewController:randomViewController animated:NO];
}

- (void) onClickResultImageView {
    
    NSLog(@"onClickResultImageView");
    [self startLocationService];
    
}

#pragma mark -
#pragma mark Location
-(void)startLocationService {
    
    // location manager & map view
    _locationManager = [[CLLocationManager alloc] init];
    [self.locationManager setDelegate:self];
    [self.locationManager setDistanceFilter:kCLDistanceFilterNone];
    [self.locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    
    
    
    // Check if location services are available
    if ([CLLocationManager locationServicesEnabled] == NO) {
        
        NSLog(@"%s: location services are not available.", __PRETTY_FUNCTION__);
        
        // Display alert to the user.
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"위치 서비스"
                                                                       message:@"위치 서비스가 비활성화 되어있습니다. 설정에서 위치 서비스를 활성화 시켜주세요."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                              
                                                                  [self openWebBrowser:self.itemName];
                                                                  
                                                              }]; // Do nothing action to dismiss the alert.
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        return;
    }
    
    // Request "when in use" location service authorization.
    // If authorization has been denied previously, we can display an alert if the user has denied location services previously.
    if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined) {
        
        [self.locationManager requestWhenInUseAuthorization];
        
    } else if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusDenied) {
        
        NSLog(@"%s: location services authorization was previously denied by the user.", __PRETTY_FUNCTION__);
        
        // Display alert to the user.
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"위치 서비스"
                                                                       message:@"사용자에 의해서 위치 서비스 사용이 비활성화 되었습니다. 설정에서 위치 서비스를 활성화 시켜주세요."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                              
                                                                  [self openWebBrowser:self.itemName];
                                                                  
                                                              }]; // Do nothing action to dismiss the alert.
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        return;
    }
    
    // Start updating locations.
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
    
    
}

#pragma mark -
#pragma mark - CLLocationManagerDelegate methods
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    
    if ( self.bGotUserLocation == YES ) {
        return;
    }
    self.bGotUserLocation = YES;
    
    CLLocation *userLocation = locations.lastObject;
    self.userCoordinate = userLocation.coordinate;
    
    [self getMyLocation];
    
    self.locationManager = nil;
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    // report any errors returned back from Location Services
    
    NSLog(@"Failed to get the user location");
    
    [self openWebBrowser:self.itemName];
}


// 상단에 내 위치 찍기
-(void) getMyLocation {
    
    
    __block NSString *address;
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder reverseGeocodeLocation:[[CLLocation alloc]initWithLatitude:self.userCoordinate.latitude longitude:self.userCoordinate.longitude] completionHandler:^(NSArray *placemarks, NSError *error)
     {
         if(placemarks && placemarks.count > 0)
         {
             CLPlacemark *placemark= [placemarks objectAtIndex:0];
             
             NSString *localityStr = [placemark locality];
             NSString *thoroughfareStr = [placemark thoroughfare];
             
             address = [NSString stringWithFormat:@"%@ %@", [localityStr isEqualToString:@"(null)"] ? @"" : localityStr , [thoroughfareStr isEqualToString:@"(null)"] ? @"" : thoroughfareStr ];
             
             [self openWebBrowser:[NSString stringWithFormat:@"%@ %@", address, self.itemName]];
         }
         
         
     }];
    
}

-(void) openWebBrowser:(NSString*)aParam {
    
    NSString *escapedUrl = [aParam stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
    NSString *url = [NSString stringWithFormat:@"https://m.search.naver.com/search.naver?where=m&query=%@&sm=mob_hty.idx&ie=utf8&qdt=1", escapedUrl ];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] ];
}

@end
