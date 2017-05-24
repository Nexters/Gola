//
//  GolaIntro02ViewController.m
//  Gola
//
//  Created by 최영준 on 2016. 8. 1..
//  Copyright © 2016년 YJ. All rights reserved.
//

#import "GolaIntro02ViewController.h"
#import "GolaIntro03ViewController.h"
#import "GolaIntroPageViewController.h"

@interface GolaIntro02ViewController () {
    
    double textTopDefault;
    double textLeadingDefault;
    double textTrailingDefault;
    double textHeightDefault;
    
    double graphic01TopDefault;
    double graphic01HeightDefault;
    double graphic01WidthDefault;
    
    double graphic02TopDefault;
    double graphic02HeightDefault;
    double graphic02WidthDefault;
    
    double graphic03HeightDefault;
    double graphic03WidthDefault;
    
    double graphic04HeightDefault;
    double graphic04WidthDefault;
    
    double buttonHeightDefault;
    double buttonWidthDefault;
    
    double labelBottomDefault;
}

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02TextTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02TextLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02TextTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02TextHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic01Top;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic01Height;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic01Width;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic02Top;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic02Height;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic02Width;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic03Height;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic03Width;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic04Height;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02Graphic04Width;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02ButtonHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02ButtonWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *intro02LabelBottom;

@end

@implementation GolaIntro02ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Auto Layout 기본 값 아이폰 5.5inch
    textTopDefault = 38;
    textLeadingDefault = 103;
    textTrailingDefault = 103;
    textHeightDefault = 148;
    
    graphic01TopDefault = 93;
    graphic01HeightDefault = 270;
    graphic01WidthDefault = 250;
    
    graphic02TopDefault = 93;
    graphic02HeightDefault = 270;
    graphic02WidthDefault = 140;
    
    graphic03HeightDefault = 135;
    graphic03WidthDefault = 214;
    
    graphic04HeightDefault = 135;
    graphic04WidthDefault = 150;
    
    buttonHeightDefault = 60;
    buttonWidthDefault = 60;
    
    labelBottomDefault = 41;
    
    // 배경 색 변경
    [self.view setBackgroundColor:[UIColor colorWithRed:250/255.0f green:250/255.0f blue:250/255.0f alpha:1.0f]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 기기에 따라서 사이즈를 다르게 한다
- (void)updateViewConstraints {
    
    [super updateViewConstraints];
    
    // 아이폰 3.5인치 0.652
    if ([UIScreen mainScreen].bounds.size.height == 480) {
        
        _intro02TextTop.constant = textTopDefault * 0.652;
        _intro02TextLeading.constant = textLeadingDefault * 0.652;
        _intro02TextTrailing.constant = textTrailingDefault * 0.652;
        _intro02TextHeight.constant = textHeightDefault * 0.652;
        
        _intro02Graphic01Top.constant = graphic01TopDefault * 0.652;
        _intro02Graphic01Height.constant = graphic01HeightDefault * 0.652;
        _intro02Graphic01Width.constant = graphic01WidthDefault * 0.652;
        
        _intro02Graphic02Top.constant = graphic02TopDefault * 0.652;
        _intro02Graphic02Height.constant = graphic02HeightDefault * 0.652;
        _intro02Graphic02Width.constant = graphic02WidthDefault * 0.652;
        
        _intro02Graphic03Height.constant = graphic03HeightDefault * 0.652;
        _intro02Graphic03Width.constant = graphic03WidthDefault * 0.652;
        
        _intro02Graphic04Height.constant = graphic04HeightDefault * 0.652;
        _intro02Graphic04Width.constant = graphic04WidthDefault * 0.652;
        
        _intro02ButtonHeight.constant = buttonHeightDefault * 0.652;
        _intro02ButtonWidth.constant = buttonWidthDefault * 0.652;
        _intro02LabelBottom.constant = labelBottomDefault * 0.652;
    }
    // 아이폰 4인치 0.77
    else if ([UIScreen mainScreen].bounds.size.height == 568) {
        
        _intro02TextTop.constant = textTopDefault * 0.77;
        _intro02TextLeading.constant = textLeadingDefault * 0.77;
        _intro02TextTrailing.constant = textTrailingDefault * 0.77;
        _intro02TextHeight.constant = textHeightDefault * 0.77;
        
        _intro02Graphic01Top.constant = graphic01TopDefault * 0.77;
        _intro02Graphic01Height.constant = graphic01HeightDefault * 0.77;
        _intro02Graphic01Width.constant = graphic01WidthDefault * 0.77;
        
        _intro02Graphic02Top.constant = graphic02TopDefault * 0.77;
        _intro02Graphic02Height.constant = graphic02HeightDefault * 0.77;
        _intro02Graphic02Width.constant = graphic02WidthDefault * 0.77;
        
        _intro02Graphic03Height.constant = graphic03HeightDefault * 0.77;
        _intro02Graphic03Width.constant = graphic03WidthDefault * 0.77;
        
        _intro02Graphic04Height.constant = graphic04HeightDefault * 0.77;
        _intro02Graphic04Width.constant = graphic04WidthDefault * 0.77;
        
        _intro02ButtonHeight.constant = buttonHeightDefault * 0.77;
        _intro02ButtonWidth.constant = buttonWidthDefault * 0.77;
        _intro02LabelBottom.constant = labelBottomDefault * 0.77;
    }
    // 아이폰 4.7인치 0.9
    else if ([UIScreen mainScreen].bounds.size.height == 667) {
        
        _intro02TextTop.constant = textTopDefault * 0.9;
        _intro02TextLeading.constant = textLeadingDefault * 0.9;
        _intro02TextTrailing.constant = textTrailingDefault * 0.9;
        _intro02TextHeight.constant = textHeightDefault * 0.9;
        
        _intro02Graphic01Top.constant = graphic01TopDefault * 0.9;
        _intro02Graphic01Height.constant = graphic01HeightDefault * 0.9;
        _intro02Graphic01Width.constant = graphic01WidthDefault * 0.9;
        
        _intro02Graphic02Top.constant = graphic02TopDefault * 0.9;
        _intro02Graphic02Height.constant = graphic02HeightDefault * 0.9;
        _intro02Graphic02Width.constant = graphic02WidthDefault * 0.9;
        
        _intro02Graphic03Height.constant = graphic03HeightDefault * 0.9;
        _intro02Graphic03Width.constant = graphic03WidthDefault * 0.9;
        
        _intro02Graphic04Height.constant = graphic04HeightDefault * 0.9;
        _intro02Graphic04Width.constant = graphic04WidthDefault * 0.9;
        
        _intro02ButtonHeight.constant = buttonHeightDefault * 0.9;
        _intro02ButtonWidth.constant = buttonWidthDefault * 0.9;
        _intro02LabelBottom.constant = labelBottomDefault * 0.9;
    }
    // 아이폰 5.5인치
    else if ([UIScreen mainScreen].bounds.size.height == 736) {
        
        _intro02TextTop.constant = textTopDefault;
        _intro02TextLeading.constant = textLeadingDefault;
        _intro02TextTrailing.constant = textTrailingDefault;
        _intro02TextHeight.constant = textHeightDefault;
        
        _intro02Graphic01Top.constant = graphic01TopDefault;
        _intro02Graphic01Height.constant = graphic01HeightDefault;
        _intro02Graphic01Width.constant = graphic01WidthDefault;
        
        _intro02Graphic02Top.constant = graphic02TopDefault;
        _intro02Graphic02Height.constant = graphic02HeightDefault;
        _intro02Graphic02Width.constant = graphic02WidthDefault;
        
        _intro02Graphic03Height.constant = graphic03HeightDefault;
        _intro02Graphic03Width.constant = graphic03WidthDefault;
        
        _intro02Graphic04Height.constant = graphic04HeightDefault;
        _intro02Graphic04Width.constant = graphic04WidthDefault;
        
        _intro02ButtonHeight.constant = buttonHeightDefault;
        _intro02ButtonWidth.constant = buttonWidthDefault;
        _intro02LabelBottom.constant = labelBottomDefault;
    }
}

#pragma mark
#pragma mark - 액션 메소드

- (IBAction)buttonTapped:(id)sender {
    
    // 다음 페이지 intro03로 이동
    GolaIntroPageViewController *introPageViewController = [[GolaIntroPageViewController alloc] init];
    introPageViewController.currentIndex = 2;
    
    [self presentViewController:introPageViewController animated:NO completion:nil];
}

@end
