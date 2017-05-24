//
//  GolaIntro03ViewController.m
//  Gola
//
//  Created by 최영준 on 2016. 8. 16..
//  Copyright © 2016년 YJ. All rights reserved.
//

#import "GolaIntro03ViewController.h"
#import "GolaMainViewController.h"

@interface GolaIntro03ViewController () {
    
    double textTopDefault;
    double textLeadingDefault;
    double textTrailingDefault;
    double textHeightDefault;
    
    double graphicHeightDefault;
    
    double buttonHeightDefault;
    double buttonWidthDefault;
    
    double labelBottomDefault;
}

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro03TextTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro03TextLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro03TextTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro03TextHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro03GraphicHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro03ButtonHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro03ButtonWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro03LabelBottom;

@end

@implementation GolaIntro03ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Auto Layout 기본 값 아이폰 5.5inch
    textTopDefault = 38.0;
    textLeadingDefault = 92.0;
    textTrailingDefault = 92.0;
    textHeightDefault = 148.0;
    
    graphicHeightDefault = 332;
    
    buttonHeightDefault = 60.0;
    buttonWidthDefault = 60.0;
    
    labelBottomDefault = 41.0;

    // 배경 색 변경
    [self.view setBackgroundColor:[UIColor colorWithRed:16/255.0f green:99/255.0f blue:238/255.0f alpha:1.0f]];
    
    // 상태 바 색상을 바꾼다
    [self setNeedsStatusBarAppearanceUpdate];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    // 흰 색상으로 변경
    return UIStatusBarStyleLightContent;
}

// 기기에 따라서 사이즈를 다르게 한다
- (void)updateViewConstraints {
    
    [super updateViewConstraints];
    
    // 아이폰 3.5인치 0.652
    if ([UIScreen mainScreen].bounds.size.height == 480) {
        
        _intro03TextTop.constant = textTopDefault * 0.652;
        _intro03TextLeading.constant = textLeadingDefault * 0.652;
        _intro03TextTrailing.constant = textTrailingDefault * 0.652;
        _intro03TextHeight.constant = textHeightDefault * 0.652;
        
        _intro03GraphicHeight.constant = graphicHeightDefault * 0.652;
        
        _intro03ButtonHeight.constant = buttonHeightDefault * 0.652;
        _intro03ButtonWidth.constant = buttonWidthDefault * 0.652;
        _intro03LabelBottom.constant = labelBottomDefault * 0.652;
    }
    // 아이폰 4인치 0.77
    else if ([UIScreen mainScreen].bounds.size.height == 568) {
        
        _intro03TextTop.constant = textTopDefault * 0.77;
        _intro03TextLeading.constant = textLeadingDefault * 0.77;
        _intro03TextTrailing.constant = textTrailingDefault * 0.77;
        _intro03TextHeight.constant = textHeightDefault * 0.77;
        
        _intro03GraphicHeight.constant = graphicHeightDefault * 0.77;
        
        _intro03ButtonHeight.constant = buttonHeightDefault * 0.77;
        _intro03ButtonWidth.constant = buttonWidthDefault * 0.77;
        _intro03LabelBottom.constant = labelBottomDefault * 0.77;
    }
    // 아이폰 4.7인치 0.9
    else if ([UIScreen mainScreen].bounds.size.height == 667) {
        
        _intro03TextTop.constant = textTopDefault * 0.9;
        _intro03TextLeading.constant = textLeadingDefault * 0.9;
        _intro03TextTrailing.constant = textTrailingDefault * 0.9;
        _intro03TextHeight.constant = textHeightDefault * 0.9;
    
        _intro03GraphicHeight.constant = graphicHeightDefault * 0.9;
        
        _intro03ButtonHeight.constant = buttonHeightDefault * 0.9;
        _intro03ButtonWidth.constant = buttonWidthDefault * 0.9;
        _intro03LabelBottom.constant = labelBottomDefault * 0.9;
    }
    // 아이폰 5.5인치
    else if ([UIScreen mainScreen].bounds.size.height == 736) {
        
        _intro03TextTop.constant = textTopDefault;
        _intro03TextLeading.constant = textLeadingDefault;
        _intro03TextTrailing.constant = textTrailingDefault;
        _intro03TextHeight.constant = textHeightDefault;
        
        _intro03GraphicHeight.constant = graphicHeightDefault;
        
        _intro03ButtonHeight.constant = buttonHeightDefault;
        _intro03ButtonWidth.constant = buttonWidthDefault;
        _intro03LabelBottom.constant = labelBottomDefault;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark
#pragma mark - 액션 메소드

- (IBAction)buttonTapped:(id)sender {
    
    // GolaMainViewController를 만든다
    GolaMainViewController *mainViewController = [[GolaMainViewController alloc] init];
    
    // mainViewController만을 표현한 UINavigationController 인스턴스를 만든다
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    
    [self presentViewController:navController animated:NO completion:nil];
    
}

@end
