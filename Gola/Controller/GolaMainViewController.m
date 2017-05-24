//
//  GolaMainViewController.m
//  Gola
//
//  Created by 최영준 on 2016. 7. 15..
//  Copyright © 2016년 Glla. All rights reserved.
//

#import "GolaMainViewController.h"
#import "GolaTournamentViewController.h"
#import "GolaRandomViewController.h"
#import "GolaIntro01ViewController.h"
#import "GolaIntroPageViewController.h"

@interface GolaMainViewController () {
    
    double mainLogoTopDefault;
    double mainLogoLeadingDefault;
    double mainLogoTrailingDefault;
    double mainLogoHeightDefault;
    
    double tournamentButtonTopDefault;
    double tournamentButtonLeadingDefault;
    double tournamentButtonTrailingDefault;
    double tournamentButtonHeightDefault;
    
    double randomButtonTopDefault;
    double randomButtonLeadingDefault;
    double randomButtonTrailingDefault;
    double randomButtonHeightDefault;
    
    double introButtonHeightDefault;
    double introButtonWidthDefault;
    
    double labelBottomDefault;
}

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *mainLogoTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *mainLogoLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *mainLogoTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *mainLogoHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournamentButtonTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournamentButtonLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournamentButtonTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournamentButtonHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *randomButtonTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *randomButtonLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *randomButtonTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *randomButtonHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *introButtonHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *introButtonWidth;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelBottom;

@end

@implementation GolaMainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Auto Layout 기본 값 아이폰 5.5inch
    mainLogoTopDefault = 60;
    mainLogoLeadingDefault = 64;
    mainLogoTrailingDefault = 47;
    mainLogoHeightDefault = 199;
    
    tournamentButtonTopDefault = 115;
    tournamentButtonLeadingDefault = 47;
    tournamentButtonTrailingDefault = 47;
    tournamentButtonHeightDefault = 80;
    
    randomButtonTopDefault = 12;
    randomButtonLeadingDefault = 47;
    randomButtonTrailingDefault = 47;
    randomButtonHeightDefault = 80;
    
    introButtonHeightDefault = 60;
    introButtonWidthDefault = 60;
    
    labelBottomDefault = 41;
    
    // 네비게이션 상단 바를 숨긴다
    [self.navigationController setNavigationBarHidden:YES];
    
    // 상태 바 색상을 바꾼다
    [self setNeedsStatusBarAppearanceUpdate];
    
    // 배경 색 변경
    [self.view setBackgroundColor:[UIColor colorWithRed:250/255.0f green:250/255.0f blue:250/255.0f alpha:1.0f]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    // 검정 색상으로 변경
    return UIStatusBarStyleDefault;
}

// 기기에 따라서 사이즈를 다르게 한다
- (void)updateViewConstraints {
    
    [super updateViewConstraints];
    
    // 아이폰 3.5인치 0.652
    if ([UIScreen mainScreen].bounds.size.height == 480) {
        
        _mainLogoTop.constant = mainLogoTopDefault * 0.652;
        _mainLogoLeading.constant = mainLogoLeadingDefault * 0.652;
        _mainLogoTrailing.constant = mainLogoTrailingDefault * 0.652;
        _mainLogoHeight.constant = mainLogoHeightDefault * 0.652;
        
        _tournamentButtonTop.constant = tournamentButtonTopDefault * 0.652;
        _tournamentButtonLeading.constant = tournamentButtonLeadingDefault * 0.652;
        _tournamentButtonTrailing.constant = tournamentButtonTrailingDefault * 0.652;
        _tournamentButtonHeight.constant = tournamentButtonHeightDefault * 0.652;
        
        _randomButtonTop.constant = randomButtonTopDefault * 0.652;
        _randomButtonLeading.constant = randomButtonLeadingDefault * 0.652;
        _randomButtonTrailing.constant = randomButtonTrailingDefault * 0.652;
        _randomButtonHeight.constant = randomButtonHeightDefault * 0.652;
        
        _introButtonHeight.constant = introButtonHeightDefault * 0.652;
        _introButtonWidth.constant = introButtonWidthDefault * 0.652;
        
        _labelBottom.constant = labelBottomDefault * 0.652;
    }
    // 아이폰 4인치 0.77
    else if ([UIScreen mainScreen].bounds.size.height == 568) {
        
        _mainLogoTop.constant = mainLogoTopDefault * 0.77;
        _mainLogoLeading.constant = mainLogoLeadingDefault * 0.77;
        _mainLogoTrailing.constant = mainLogoTrailingDefault * 0.77;
        _mainLogoHeight.constant = mainLogoHeightDefault * 0.77;
        
        _tournamentButtonTop.constant = tournamentButtonTopDefault * 0.77;
        _tournamentButtonLeading.constant = tournamentButtonLeadingDefault * 0.77;
        _tournamentButtonTrailing.constant = tournamentButtonTrailingDefault * 0.77;
        _tournamentButtonHeight.constant = tournamentButtonHeightDefault * 0.77;
        
        _randomButtonTop.constant = randomButtonTopDefault * 0.77;
        _randomButtonLeading.constant = randomButtonLeadingDefault * 0.77;
        _randomButtonTrailing.constant = randomButtonTrailingDefault * 0.77;
        _randomButtonHeight.constant = randomButtonHeightDefault * 0.77;
        
        _introButtonHeight.constant = introButtonHeightDefault * 0.77;
        _introButtonWidth.constant = introButtonWidthDefault * 0.77;
        
        _labelBottom.constant = labelBottomDefault * 0.77;
    }
    // 아이폰 4.7인치 0.9
    else if ([UIScreen mainScreen].bounds.size.height == 667) {
        
        _mainLogoTop.constant = mainLogoTopDefault * 0.9;
        _mainLogoLeading.constant = mainLogoLeadingDefault * 0.9;
        _mainLogoTrailing.constant = mainLogoTrailingDefault * 0.9;
        _mainLogoHeight.constant = mainLogoHeightDefault * 0.9;
        
        _tournamentButtonTop.constant = tournamentButtonTopDefault * 0.9;
        _tournamentButtonLeading.constant = tournamentButtonLeadingDefault * 0.9;
        _tournamentButtonTrailing.constant = tournamentButtonTrailingDefault * 0.9;
        _tournamentButtonHeight.constant = tournamentButtonHeightDefault * 0.9;
        
        _randomButtonTop.constant = randomButtonTopDefault * 0.9;
        _randomButtonLeading.constant = randomButtonLeadingDefault * 0.9;
        _randomButtonTrailing.constant = randomButtonTrailingDefault * 0.9;
        _randomButtonHeight.constant = randomButtonHeightDefault * 0.9;
        
        _introButtonHeight.constant = introButtonHeightDefault * 0.9;
        _introButtonWidth.constant = introButtonWidthDefault * 0.9;
        
        _labelBottom.constant = labelBottomDefault * 0.9;
    }
    // 아이폰 5.5인치
    else if ([UIScreen mainScreen].bounds.size.height == 736) {
        
        _mainLogoTop.constant = mainLogoTopDefault;
        _mainLogoLeading.constant = mainLogoLeadingDefault;
        _mainLogoTrailing.constant = mainLogoTrailingDefault;
        _mainLogoHeight.constant = mainLogoHeightDefault;
        
        _tournamentButtonTop.constant = tournamentButtonTopDefault;
        _tournamentButtonLeading.constant = tournamentButtonLeadingDefault;
        _tournamentButtonTrailing.constant = tournamentButtonTrailingDefault;
        _tournamentButtonHeight.constant = tournamentButtonHeightDefault;
        
        _randomButtonTop.constant = randomButtonTopDefault;
        _randomButtonLeading.constant = randomButtonLeadingDefault;
        _randomButtonTrailing.constant = randomButtonTrailingDefault;
        _randomButtonHeight.constant = randomButtonHeightDefault;
        
        _introButtonHeight.constant = introButtonHeightDefault;
        _introButtonWidth.constant = introButtonWidthDefault;
        
        _labelBottom.constant = labelBottomDefault;
    }
}

#pragma mark
#pragma mark - 액션 메소드

- (IBAction)tournamentTapped:(id)sender {
    
    NSLog(@"tournamentTapped");
    
    GolaTournamentViewController *tournamentViewcontroller = [[GolaTournamentViewController alloc] init];
    [self.navigationController pushViewController:tournamentViewcontroller animated:NO];
}

- (IBAction)randomTapped:(id)sender {
    
    NSLog(@"randomTapped");
    
    GolaRandomViewController *randomViewController = [[GolaRandomViewController alloc] init];
    [self.navigationController pushViewController:randomViewController animated:NO];
}

- (IBAction)introTapped:(id)sender {
    
    NSLog(@"tutorialTapped");

    //GolaIntro01ViewController *intro01ViewController = [[GolaIntro01ViewController alloc] init];
    //[self presentViewController:intro01ViewController animated:NO completion:nil];
    GolaIntroPageViewController *introPageViewController = [[GolaIntroPageViewController alloc] init];
    [self presentViewController:introPageViewController animated:NO completion:nil];
}

@end
