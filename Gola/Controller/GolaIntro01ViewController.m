//
//  GolaIntro01ViewController.m
//  Gola
//
//  Created by 최영준 on 2016. 8. 1..
//  Copyright © 2016년 YJ. All rights reserved.
//

#import "GolaIntro01ViewController.h"
#import "GolaIntro02ViewController.h"
#import "GolaIntroPageViewController.h"

@interface GolaIntro01ViewController () {
    
    double textTopDefault;
    double textLeadingDefault;
    double textTrailingDefault;
    double textHeightDefault;
    
    double graphicBottomDefault;
    double graphicLeadingDefault;
    double graphicTrailingDefault;
    double graphicHeightDefault;
    
    double buttonHeightDefault;
    double buttonWidthDefault;
    
    double labelBottomDefault;
}

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01TextLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01TextTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01TextTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01TextHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01GraphicBottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01GraphicLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01GraphicTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01GraphicHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01ButtonHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01ButtonWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro01LabelBottom;

@end

@implementation GolaIntro01ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Auto Layout 기본 값 아이폰 5.5inch
    textTopDefault = 28.0;
    textLeadingDefault = 105.0;
    textTrailingDefault = 105.0;
    textHeightDefault = 160;
    
    graphicBottomDefault = 52.0;
    graphicLeadingDefault = 40.0;
    graphicTrailingDefault = 40.0;
    graphicHeightDefault = 200.0;
    
    buttonHeightDefault = 60.0;
    buttonWidthDefault = 60.0;
    
    labelBottomDefault = 41.0;
    
    // 배경 색 변경
    [self.view setBackgroundColor:[UIColor colorWithRed:58/255.0f green:41/255.0f blue:157/255.0f alpha:1.0f]];
    
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
        
        _intro01TextTop.constant = textTopDefault * 0.652;
        _intro01TextLeading.constant = textLeadingDefault * 0.652;
        _intro01TextTrailing.constant = textTrailingDefault * 0.652;
        _intro01TextHeight.constant = textHeightDefault * 0.652;
        
        _intro01GraphicBottom.constant = graphicBottomDefault * 0.652;
        _intro01GraphicLeading.constant = graphicLeadingDefault * 0.652;
        _intro01GraphicTrailing.constant = graphicTrailingDefault * 0.652;
        _intro01GraphicHeight.constant = graphicHeightDefault * 0.652;
        
        _intro01ButtonHeight.constant = buttonHeightDefault * 0.652;
        _intro01ButtonWidth.constant = buttonWidthDefault * 0.652;
        
        _intro01LabelBottom.constant = labelBottomDefault * 0.652;
    }
    // 아이폰 4인치 0.77
    else if ([UIScreen mainScreen].bounds.size.height == 568) {
        
        _intro01TextTop.constant = textTopDefault * 0.77;
        _intro01TextLeading.constant = textLeadingDefault * 0.77;
        _intro01TextTrailing.constant = textTrailingDefault * 0.77;
        _intro01TextHeight.constant = textHeightDefault * 0.77;
        
        _intro01GraphicBottom.constant = graphicBottomDefault * 0.77;
        _intro01GraphicLeading.constant = graphicLeadingDefault * 0.77;
        _intro01GraphicTrailing.constant = graphicTrailingDefault * 0.77;
        _intro01GraphicHeight.constant = graphicHeightDefault * 0.77;
        
        _intro01ButtonHeight.constant = buttonHeightDefault * 0.77;
        _intro01ButtonWidth.constant = buttonWidthDefault * 0.77;
        
        _intro01LabelBottom.constant = labelBottomDefault * 0.77;
    }
    // 아이폰 4.7인치 0.9
    else if ([UIScreen mainScreen].bounds.size.height == 667) {
        
        _intro01TextTop.constant = textTopDefault * 0.9;
        _intro01TextLeading.constant = textLeadingDefault * 0.9;
        _intro01TextTrailing.constant = textTrailingDefault * 0.9;
        _intro01TextHeight.constant = textHeightDefault * 0.9;
        
        _intro01GraphicBottom.constant = graphicBottomDefault * 0.9;
        _intro01GraphicLeading.constant = graphicLeadingDefault * 0.9;
        _intro01GraphicTrailing.constant = graphicTrailingDefault * 0.9;
        _intro01GraphicHeight.constant = graphicHeightDefault * 0.9;
        
        _intro01ButtonHeight.constant = buttonHeightDefault * 0.9;
        _intro01ButtonWidth.constant = buttonWidthDefault * 0.9;
        
        _intro01LabelBottom.constant = labelBottomDefault * 0.9;
    }
    // 아이폰 5.5인치
    else if ([UIScreen mainScreen].bounds.size.height == 736) {
        
        _intro01TextTop.constant = textTopDefault;
        _intro01TextLeading.constant = textLeadingDefault;
        _intro01TextTrailing.constant = textTrailingDefault;
        _intro01TextHeight.constant = textHeightDefault;
        
        _intro01GraphicBottom.constant = graphicBottomDefault;
        _intro01GraphicLeading.constant = graphicLeadingDefault;
        _intro01GraphicTrailing.constant = graphicTrailingDefault;
        _intro01GraphicHeight.constant = graphicHeightDefault;
        
        _intro01ButtonHeight.constant = buttonHeightDefault;
        _intro01ButtonWidth.constant = buttonWidthDefault;
        
        _intro01LabelBottom.constant = labelBottomDefault;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark
#pragma mark - 액션 메소드

- (IBAction)buttonTapped:(id)sender {
    
    // 다음 페이지 intro02로 이동
    GolaIntroPageViewController *introPageViewController = [[GolaIntroPageViewController alloc] init];
    introPageViewController.currentIndex = 1;
    
    [self presentViewController:introPageViewController animated:NO completion:nil];
}

@end
