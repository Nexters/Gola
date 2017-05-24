//
//  GolaRoundOneViewController.m
//  Gola
//
//  Created by 최영준 on 2016. 7. 15..
//  Copyright © 2016년 Gola. All rights reserved.
//

#import "GolaTournamentViewController.h"
#import "GolaItem.h"
#import "GolaPulse.h"
#import "GolaTournamentResultViewController.h"

@interface GolaTournamentViewController () {
    
    BOOL flag;
    int count;
    
    // 제약조건 기본 값
    double topViewHeightDefault;
    double homeButtonTopDefault;
    double homeButtonLeadingDefault;
    double homeButtonHeightDefault;
    double logoHeightDefault;
    double logoWidthDefault;
    double restartButtonTopDefault;
    double restartButtonTrailingDefault;
    double restartButtonHeightDefault;
    
    double roundViewHeightDefault;
    double tournamentBarWidthDefault;
    double tournament16ImageLeadingDefault;
    double tournament16ImageTrailingDefault;
    double tournament16LabelTopDefault;
    double tournament8ImageTrailingDefault;
    double tournament8LabelTopDefault;
    double tournament4ImageTrailingDefault;
    double tournament4LabelTopDefault;
    double tournamentFinalImageTrailingDefault;
    double tournamentFinalLabelTopDefault;
    
    double imageViewALeadingDefault;
    double imageViewATrailingDefault;
    double imageViewABottomDefault;
    double imageViewAHeightDefault;
    double maskALeadingDefault;
    double maskATrailingDefault;
    double maskABottomDefault;
    double labelABottomDefault;
    double buttonALeadingDefault;
    double buttonATrailingDefault;
    double buttonABottomDefault;
    double imageViewBLeadingDefault;
    double imageViewBTrailingDefault;
    double imageViewBBottomDefault;
    double maskBLeadingDefault;
    double maskBTrailingDefault;
    double maskBBottomDefault;
    double labelBBottomDefault;
    double buttonBLeadingDefault;
    double buttonBTrailingDefault;
    double buttonBBottomDefault;
    double selectedAHeightDefault;
    double selectedBHeightDefault;
    
    
    double nvSubViewLeadingDefault;
    double nvSubViewTrailingDefault;
    double nvSubViewHeightDefault;
    double topLabel1TopDefault;
    double topLabel1HeightDefault;
    double topLabel2TopDefault;
    double topLabel2BottomDefault;
    double topLabel2HeightDefault;
    double selectedMenu1LeadingDefault;
    double selectedMenu1TrailingDefault;
    double selectedMenu1BottomDefault;
    double selectedMenu2TopDefault;
    double selectedMenu2TrailingDefault;
    double selectedMenu2BottomDefault;
    double selectedMenu3TopDefault;
    double selectedMenu3TrailingDefault;
    double selectedMenu3BottomDefault;
    double selectedMenu4TrailingDefault;
    double selectedMenu4BottomDefault;
}

@property (strong, nonatomic) NSMutableArray *itemNumberArray;
@property (strong, nonatomic) NSMutableArray *RoundOf32WinnerArray;
@property (strong, nonatomic) NSMutableArray *RoundOf16WinnerArray;
@property (strong, nonatomic) NSMutableArray *RoundOf8WinnerArray;
@property (strong, nonatomic) NSMutableArray *RoundOf4WinnerArray;

@property (assign, nonatomic) NSInteger tournamentRound;
@property (strong, nonatomic) GolaItem *itemA;
@property (strong, nonatomic) GolaItem *itemB;

@property (strong, nonatomic) GolaPulse *pulseA;
@property (strong, nonatomic) GolaPulse *pulseB;
@property (strong, nonatomic) GolaPulse *pulseC;

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

#pragma mark - RoundView 프로퍼티, 제약조건
// 프로퍼티
@property (weak, nonatomic) IBOutlet UIImageView *tournament16ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *tournament8ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *tournament4ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *tournamentFinalImageView;
@property (weak, nonatomic) IBOutlet UILabel *tournament16Label;
@property (weak, nonatomic) IBOutlet UILabel *tournament8Label;
@property (weak, nonatomic) IBOutlet UILabel *tournament4Label;
@property (weak, nonatomic) IBOutlet UILabel *tournamentFinalLabel;

// 제약조건
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *roundViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournamentBarWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournament16ImageLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournament16ImageTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournament16LabelTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournament8ImageTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournament8LabelTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournament4ImageTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournament4LabelTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournamentFinalImageTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tournamentFinalLabelTop;

#pragma mark - ContentView 프로퍼티, 제약조건
// 프로퍼티
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewA;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewB;
@property (weak, nonatomic) IBOutlet UIButton *imageButtonA;
@property (weak, nonatomic) IBOutlet UIButton *imageButtonB;
@property (weak, nonatomic) IBOutlet UIImageView *maskA;
@property (weak, nonatomic) IBOutlet UIImageView *maskB;
@property (weak, nonatomic) IBOutlet UILabel *labelA;
@property (weak, nonatomic) IBOutlet UILabel *labelB;

@property (weak, nonatomic) IBOutlet UIImageView *selectedA;
@property (weak, nonatomic) IBOutlet UIImageView *selectedB;


//제약조건
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewALeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewATrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewABottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewAHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *maskALeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *maskATrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *maskABottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelABottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonALeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonATrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonABottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewBLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewBTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewBBottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *maskBLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *maskBTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *maskBBottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelBBottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonBLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonBTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonBBottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedAHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedBHeight;

#pragma mark - notificationView 프로퍼티, 제약조건
// 프로퍼티
@property (strong, nonatomic) IBOutlet UIView *notificationView;
@property (weak, nonatomic) IBOutlet UILabel *topLabel1;
@property (weak, nonatomic) IBOutlet UILabel *topLabel2;
@property (weak, nonatomic) IBOutlet UILabel *selectedMenu1;
@property (weak, nonatomic) IBOutlet UILabel *selectedMenu2;
@property (weak, nonatomic) IBOutlet UILabel *selectedMenu3;
@property (weak, nonatomic) IBOutlet UILabel *selectedMenu4;
@property (weak, nonatomic) IBOutlet UILabel *selectedMenu5;
@property (weak, nonatomic) IBOutlet UILabel *selectedMenu6;
@property (weak, nonatomic) IBOutlet UILabel *selectedMenu7;
@property (weak, nonatomic) IBOutlet UILabel *selectedMenu8;
@property (weak, nonatomic) IBOutlet UIView *nvSubView;


// 제약조건
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nvSubViewLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nvSubViewTrailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nvSubViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topLabel1Top;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topLabel1Height;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topLabel2Top;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topLabel2Bottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topLabel2Height;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu1Leading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu1Trailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu1Bottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu2Top;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu2Trailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu2Bottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu3Top;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu3Trailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu3Bottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu4Trailing;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *selectedMenu4Bottom;

@end

#pragma mark
#pragma mark

@implementation GolaTournamentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 상태 바 색상을 바꾼다
    [self setNeedsStatusBarAppearanceUpdate];
    
    // 이미지 뷰 테두리를 둥글게 만든다
    [_imageViewA.layer setCornerRadius:10];
    [_imageViewA.layer setMasksToBounds:YES];
    [_imageViewB.layer setCornerRadius:10];
    [_imageViewB.layer setMasksToBounds:YES];
    [_nvSubView.layer setCornerRadius:10];
    [_nvSubView.layer setMasksToBounds:YES];
    
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
    
    roundViewHeightDefault = 80;
    tournamentBarWidthDefault = 277;
    tournament16ImageLeadingDefault = 60;
    tournament16ImageTrailingDefault = 77;
    tournament16LabelTopDefault = 8;
    tournament8ImageTrailingDefault = 74;
    tournament8LabelTopDefault = 8;
    tournament4ImageTrailingDefault = 77;
    tournament4LabelTopDefault = 8;
    tournamentFinalImageTrailingDefault = 60;
    tournamentFinalLabelTopDefault = 8;
     
    imageViewALeadingDefault = 27;
    imageViewATrailingDefault = 27;
    imageViewABottomDefault = 10;
    imageViewAHeightDefault = 250;
    maskALeadingDefault = imageViewALeadingDefault;
    maskATrailingDefault = imageViewATrailingDefault;
    maskABottomDefault = imageViewABottomDefault;
    labelABottomDefault = imageViewABottomDefault;
    buttonALeadingDefault = imageViewALeadingDefault;
    buttonATrailingDefault = imageViewATrailingDefault;
    buttonABottomDefault = imageViewABottomDefault;
    imageViewBLeadingDefault = 27;
    imageViewBTrailingDefault = 27;
    imageViewBBottomDefault = 20;
    maskBLeadingDefault = imageViewBLeadingDefault;
    maskBTrailingDefault = imageViewBTrailingDefault;
    maskBBottomDefault = imageViewBBottomDefault;
    labelBBottomDefault = imageViewBBottomDefault;
    buttonBLeadingDefault = imageViewBLeadingDefault;
    buttonBTrailingDefault = imageViewBTrailingDefault;
    buttonBBottomDefault = imageViewBBottomDefault;
    selectedAHeightDefault = 107;
    selectedBHeightDefault = selectedAHeightDefault;
    
    nvSubViewLeadingDefault = 27;
    nvSubViewTrailingDefault = 27;
    nvSubViewHeightDefault = 510;
    topLabel1TopDefault = 56;
    topLabel1HeightDefault = 36;
    topLabel2TopDefault = 4;
    topLabel2BottomDefault = 40;
    topLabel2HeightDefault = 36;
    selectedMenu1LeadingDefault = 35;
    selectedMenu1TrailingDefault = 8;
    selectedMenu1BottomDefault = 6;
    selectedMenu2TopDefault = 17;
    selectedMenu2TrailingDefault = 8;
    selectedMenu2BottomDefault = 6;
    selectedMenu3TopDefault = 17;
    selectedMenu3TrailingDefault = 8;
    selectedMenu3BottomDefault = 6;
    selectedMenu4TrailingDefault = 35;
    selectedMenu4BottomDefault = 6;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    // _itemNumberArray 초기화
    _itemNumberArray = [[NSMutableArray alloc] init];
    // _RoundWinnerArray 초기화
    _RoundOf32WinnerArray = [[NSMutableArray alloc] init];
    _RoundOf16WinnerArray = [[NSMutableArray alloc] init];
    _RoundOf8WinnerArray = [[NSMutableArray alloc] init];
    _RoundOf4WinnerArray = [[NSMutableArray alloc] init];

    // viewWillAppear은 다른 뷰에서 다시 돌아왔을 경우, 토너먼트를 다시시작한다
    [self initTournament];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
        
        _labelA.font = [_labelA.font fontWithSize:20];
        _labelB.font = [_labelB.font fontWithSize:20];
        
        _topLabel1.font = [_topLabel1.font fontWithSize:24];
        _topLabel2.font = [_topLabel2.font fontWithSize:24];
        
        _selectedMenu1.font = [_selectedMenu1.font fontWithSize:14];
        _selectedMenu2.font = [_selectedMenu2.font fontWithSize:14];
        _selectedMenu3.font = [_selectedMenu3.font fontWithSize:14];
        _selectedMenu4.font = [_selectedMenu4.font fontWithSize:14];
        _selectedMenu5.font = [_selectedMenu5.font fontWithSize:14];
        _selectedMenu6.font = [_selectedMenu6.font fontWithSize:14];
        _selectedMenu7.font = [_selectedMenu7.font fontWithSize:14];
        _selectedMenu8.font = [_selectedMenu8.font fontWithSize:14];
        
        _topViewHeight.constant = topViewHeightDefault * 0.652;
        _homeButtonTop.constant = homeButtonTopDefault * 0.652;
        _homeButtonLeading.constant = homeButtonLeadingDefault * 0.652;
        _homeButtonHeight.constant = homeButtonHeightDefault * 0.652;
        _logoHeight.constant = logoHeightDefault * 0.652;
        _logoWidth.constant = logoWidthDefault * 0.652;
        _restartButtonTop.constant = restartButtonTopDefault * 0.652;
        _restartButtonTrailing.constant = restartButtonTrailingDefault * 0.652;
        _restartButtonHeight.constant = restartButtonHeightDefault * 0.652;
        /*
        _roundViewHeight.constant = roundViewHeightDefault * 0.652;
        _tournamentBarWidth.constant = tournamentBarWidthDefault * 0.652;
        _tournament16ImageHeight.constant = tournament16ImageHeightDefault * 0.652;
        _tournament16ImageLeading.constant = tournament16ImageLeadingDefault * 0.652;
        _tournament16ImageTrailing.constant = tournament16ImageTrailingDefault * 0.652;
        _tournament16LabelTop.constant = tournament16LabelTopDefault * 0.652;
        _tournament8ImageTrailing.constant = tournament8ImageTrailingDefault * 0.652;
        _tournament8LabelTop.constant = tournament8LabelTopDefault * 0.652;
        _tournament4ImageTrailing.constant = tournament4ImageTrailingDefault * 0.652;
        _tournament4LabelTop.constant = tournament4LabelTopDefault * 0.652;
        _tournamentFinalImageTrailing.constant = tournamentFinalImageTrailingDefault * 0.652;
        _tournamentFinalLabelTop.constant = tournamentFinalLabelTopDefault * 0.652;
        */
        // 라운드 뷰 사이즈 크기 조절 오류로인한 수정
        _roundViewHeight.constant = roundViewHeightDefault * 0.8;
        _tournamentBarWidth.constant = tournamentBarWidthDefault * 0.8;
        _tournament16ImageLeading.constant = tournament16ImageLeadingDefault * 0.8;
        _tournament16ImageTrailing.constant = tournament16ImageTrailingDefault * 0.8;
        _tournament16LabelTop.constant = 1;
        _tournament8ImageTrailing.constant = tournament8ImageTrailingDefault * 0.8;
        _tournament8LabelTop.constant = 1;
        _tournament4ImageTrailing.constant = tournament4ImageTrailingDefault * 0.8;
        _tournament4LabelTop.constant = 1;
        _tournamentFinalImageTrailing.constant = tournamentFinalImageTrailingDefault * 0.8;
        _tournamentFinalLabelTop.constant = 1;
        
        _imageViewALeading.constant = imageViewALeadingDefault * 0.652;
        _imageViewATrailing.constant = imageViewATrailingDefault * 0.652;
        _imageViewABottom.constant = imageViewABottomDefault * 0.652;
        _imageViewAHeight.constant = imageViewAHeightDefault * 0.652;
        _maskALeading.constant = maskALeadingDefault * 0.652;
        _maskATrailing.constant = maskATrailingDefault * 0.652;
        _maskABottom.constant = maskABottomDefault * 0.652;
        _labelABottom.constant = labelABottomDefault * 0.652;
        _buttonALeading.constant = buttonALeadingDefault * 0.652;
        _buttonATrailing.constant = buttonATrailingDefault * 0.652;
        _buttonABottom.constant = buttonABottomDefault * 0.652;
        _imageViewBLeading.constant = imageViewBLeadingDefault * 0.652;
        _imageViewBTrailing.constant = imageViewBTrailingDefault * 0.652;
        _imageViewBBottom.constant = imageViewBBottomDefault * 0.652;
        _maskBLeading.constant = maskBLeadingDefault * 0.652;
        _maskBTrailing.constant = maskBTrailingDefault * 0.652;
        _maskBBottom.constant = maskBBottomDefault * 0.652;
        _labelBBottom.constant = labelBBottomDefault * 0.652;
        _buttonBLeading.constant = buttonBLeadingDefault * 0.652;
        _buttonBTrailing.constant = buttonBTrailingDefault * 0.652;
        _buttonBBottom.constant = buttonBBottomDefault * 0.652;
        _selectedAHeight.constant = selectedAHeightDefault * 0.652;
        _selectedBHeight.constant = selectedBHeightDefault * 0.652;
        
        _nvSubViewLeading.constant = nvSubViewLeadingDefault * 0.652;
        _nvSubViewTrailing.constant = nvSubViewTrailingDefault * 0.652;
        _nvSubViewHeight.constant = nvSubViewHeightDefault * 0.652;
        _topLabel1Top.constant = topLabel1TopDefault * 0.652;
        _topLabel1Height.constant = topLabel1HeightDefault * 0.652;
        _topLabel2Top.constant = topLabel2TopDefault * 0.652;
        _topLabel2Bottom.constant = topLabel2BottomDefault * 0.652;
        _topLabel2Height.constant = topLabel2HeightDefault * 0.652;
        _selectedMenu1Leading.constant = selectedMenu1LeadingDefault * 0.652;
        _selectedMenu1Trailing.constant = selectedMenu1TrailingDefault * 0.652;
        _selectedMenu1Bottom.constant = selectedMenu1BottomDefault * 0.652;
        _selectedMenu2Top.constant = selectedMenu2TopDefault * 0.652;
        _selectedMenu2Trailing.constant = selectedMenu2TrailingDefault * 0.652;
        _selectedMenu2Bottom.constant = selectedMenu2BottomDefault * 0.652;
        _selectedMenu3Top.constant = selectedMenu3TopDefault * 0.652;
        _selectedMenu3Trailing.constant = selectedMenu3TrailingDefault * 0.652;
        _selectedMenu3Bottom.constant = selectedMenu3BottomDefault * 0.652;
        _selectedMenu4Trailing.constant = selectedMenu4TrailingDefault * 0.652;
        _selectedMenu4Bottom.constant = selectedMenu4BottomDefault * 0.652;
    }
    // 아이폰 4인치 0.77
    else if ([UIScreen mainScreen].bounds.size.height == 568) {
      
        _labelA.font = [_labelA.font fontWithSize:23];
        _labelB.font = [_labelB.font fontWithSize:23];
        
        _topLabel1.font = [_topLabel1.font fontWithSize:26];
        _topLabel2.font = [_topLabel2.font fontWithSize:26];
        
        _selectedMenu1.font = [_selectedMenu1.font fontWithSize:14];
        _selectedMenu2.font = [_selectedMenu2.font fontWithSize:14];
        _selectedMenu3.font = [_selectedMenu3.font fontWithSize:14];
        _selectedMenu4.font = [_selectedMenu4.font fontWithSize:14];
        _selectedMenu5.font = [_selectedMenu5.font fontWithSize:14];
        _selectedMenu6.font = [_selectedMenu6.font fontWithSize:14];
        _selectedMenu7.font = [_selectedMenu7.font fontWithSize:14];
        _selectedMenu8.font = [_selectedMenu8.font fontWithSize:14];
        
        _topViewHeight.constant = topViewHeightDefault * 0.77;
        _homeButtonTop.constant = homeButtonTopDefault * 0.77;
        _homeButtonLeading.constant = homeButtonLeadingDefault * 0.77;
        _homeButtonHeight.constant = homeButtonHeightDefault * 0.77;
        _logoHeight.constant = logoHeightDefault * 0.77;
        _logoWidth.constant = logoWidthDefault * 0.77;
        _restartButtonTop.constant = restartButtonTopDefault * 0.77;
        _restartButtonTrailing.constant = restartButtonTrailingDefault * 0.77;
        _restartButtonHeight.constant = restartButtonHeightDefault * 0.77;
        
        _roundViewHeight.constant = roundViewHeightDefault * 0.77;
        _tournamentBarWidth.constant = tournamentBarWidthDefault * 0.77;
        _tournament16ImageLeading.constant = tournament16ImageLeadingDefault * 0.77;
        _tournament16ImageTrailing.constant = tournament16ImageTrailingDefault * 0.77;
        _tournament16LabelTop.constant = tournament16LabelTopDefault * 0.77;
        _tournament8ImageTrailing.constant = tournament8ImageTrailingDefault * 0.77;
        _tournament8LabelTop.constant = tournament8LabelTopDefault * 0.77;
        _tournament4ImageTrailing.constant = tournament4ImageTrailingDefault * 0.77;
        _tournament4LabelTop.constant = tournament4LabelTopDefault * 0.77;
        _tournamentFinalImageTrailing.constant = tournamentFinalImageTrailingDefault * 0.77;
        _tournamentFinalLabelTop.constant = tournamentFinalLabelTopDefault * 0.77;
        
        _imageViewALeading.constant = imageViewALeadingDefault * 0.77;
        _imageViewATrailing.constant = imageViewATrailingDefault * 0.77;
        _imageViewABottom.constant = imageViewABottomDefault * 0.77;
        _imageViewAHeight.constant = imageViewAHeightDefault * 0.77;
        _maskALeading.constant = maskALeadingDefault * 0.77;
        _maskATrailing.constant = maskATrailingDefault * 0.77;
        _maskABottom.constant = maskABottomDefault * 0.77;
        _labelABottom.constant = labelABottomDefault * 0.77;
        _buttonALeading.constant = buttonALeadingDefault * 0.77;
        _buttonATrailing.constant = buttonATrailingDefault * 0.77;
        _buttonABottom.constant = buttonABottomDefault * 0.77;
        _imageViewBLeading.constant = imageViewBLeadingDefault * 0.77;
        _imageViewBTrailing.constant = imageViewBTrailingDefault * 0.77;
        _imageViewBBottom.constant = imageViewBBottomDefault * 0.77;
        _maskBLeading.constant = maskBLeadingDefault * 0.77;
        _maskBTrailing.constant = maskBTrailingDefault * 0.77;
        _maskBBottom.constant = maskBBottomDefault * 0.77;
        _labelBBottom.constant = labelBBottomDefault * 0.77;
        _buttonBLeading.constant = buttonBLeadingDefault * 0.77;
        _buttonBTrailing.constant = buttonBTrailingDefault * 0.77;
        _buttonBBottom.constant = buttonBBottomDefault * 0.77;
        _selectedAHeight.constant = selectedAHeightDefault * 0.77;
        _selectedBHeight.constant = selectedBHeightDefault * 0.77;
        
        _nvSubViewLeading.constant = nvSubViewLeadingDefault * 0.77;
        _nvSubViewTrailing.constant = nvSubViewTrailingDefault * 0.77;
        _nvSubViewHeight.constant = nvSubViewHeightDefault * 0.77;
        _topLabel1Top.constant = topLabel1TopDefault * 0.77;
        _topLabel1Height.constant = topLabel1HeightDefault * 0.77;
        _topLabel2Top.constant = topLabel2TopDefault * 0.77;
        _topLabel2Bottom.constant = topLabel2BottomDefault * 0.77;
        _topLabel2Height.constant = topLabel2HeightDefault * 0.77;
        _selectedMenu1Leading.constant = selectedMenu1LeadingDefault * 0.77;
        _selectedMenu1Trailing.constant = selectedMenu1TrailingDefault * 0.77;
        _selectedMenu1Bottom.constant = selectedMenu1BottomDefault * 0.77;
        _selectedMenu2Top.constant = selectedMenu2TopDefault * 0.77;
        _selectedMenu2Trailing.constant = selectedMenu2TrailingDefault * 0.77;
        _selectedMenu2Bottom.constant = selectedMenu2BottomDefault * 0.77;
        _selectedMenu3Top.constant = selectedMenu3TopDefault * 0.77;
        _selectedMenu3Trailing.constant = selectedMenu3TrailingDefault * 0.77;
        _selectedMenu3Bottom.constant = selectedMenu3BottomDefault * 0.77;
        _selectedMenu4Trailing.constant = selectedMenu4TrailingDefault * 0.77;
        _selectedMenu4Bottom.constant = selectedMenu4BottomDefault * 0.77;
    }
    
    // 아이폰 4.7인치 0.9
    else if ([UIScreen mainScreen].bounds.size.height == 667) {
        
        _labelA.font = [_labelA.font fontWithSize:26];
        _labelB.font = [_labelB.font fontWithSize:26];
        
        _topLabel1.font = [_topLabel1.font fontWithSize:28];
        _topLabel2.font = [_topLabel2.font fontWithSize:28];
        
        _selectedMenu1.font = [_selectedMenu1.font fontWithSize:16];
        _selectedMenu2.font = [_selectedMenu2.font fontWithSize:16];
        _selectedMenu3.font = [_selectedMenu3.font fontWithSize:16];
        _selectedMenu4.font = [_selectedMenu4.font fontWithSize:16];
        _selectedMenu5.font = [_selectedMenu5.font fontWithSize:16];
        _selectedMenu6.font = [_selectedMenu6.font fontWithSize:16];
        _selectedMenu7.font = [_selectedMenu7.font fontWithSize:16];
        _selectedMenu8.font = [_selectedMenu8.font fontWithSize:16];
        
        _topViewHeight.constant = topViewHeightDefault * 0.9;
        _homeButtonTop.constant = homeButtonTopDefault * 0.9;
        _homeButtonLeading.constant = homeButtonLeadingDefault * 0.9;
        _homeButtonHeight.constant = homeButtonHeightDefault * 0.9;
        _logoHeight.constant = logoHeightDefault * 0.9;
        _logoWidth.constant = logoWidthDefault * 0.9;
        _restartButtonTop.constant = restartButtonTopDefault * 0.9;
        _restartButtonTrailing.constant = restartButtonTrailingDefault * 0.9;
        _restartButtonHeight.constant = restartButtonHeightDefault * 0.9;
        
        _roundViewHeight.constant = roundViewHeightDefault * 0.9;
        _tournamentBarWidth.constant = tournamentBarWidthDefault * 0.9;
        _tournament16ImageLeading.constant = tournament16ImageLeadingDefault * 0.9;
        _tournament16ImageTrailing.constant = tournament16ImageTrailingDefault * 0.9;
        _tournament16LabelTop.constant = tournament16LabelTopDefault * 0.9;
        _tournament8ImageTrailing.constant = tournament8ImageTrailingDefault * 0.9;
        _tournament8LabelTop.constant = tournament8LabelTopDefault * 0.9;
        _tournament4ImageTrailing.constant = tournament4ImageTrailingDefault * 0.9;
        _tournament4LabelTop.constant = tournament4LabelTopDefault * 0.9;
        _tournamentFinalImageTrailing.constant = tournamentFinalImageTrailingDefault * 0.9;
        _tournamentFinalLabelTop.constant = tournamentFinalLabelTopDefault * 0.9;
        
        _imageViewALeading.constant = imageViewALeadingDefault * 0.9;
        _imageViewATrailing.constant = imageViewATrailingDefault * 0.9;
        _imageViewABottom.constant = imageViewABottomDefault * 0.9;
        _imageViewAHeight.constant = imageViewAHeightDefault * 0.9;
        _maskALeading.constant = maskALeadingDefault * 0.9;
        _maskATrailing.constant = maskATrailingDefault * 0.9;
        _maskABottom.constant = maskABottomDefault * 0.9;
        _labelABottom.constant = labelABottomDefault * 0.9;
        _buttonALeading.constant = buttonALeadingDefault * 0.9;
        _buttonATrailing.constant = buttonATrailingDefault * 0.9;
        _buttonABottom.constant = buttonABottomDefault * 0.9;
        _imageViewBLeading.constant = imageViewBLeadingDefault * 0.9;
        _imageViewBTrailing.constant = imageViewBTrailingDefault * 0.9;
        _imageViewBBottom.constant = imageViewBBottomDefault * 0.9;
        _maskBLeading.constant = maskBLeadingDefault * 0.9;
        _maskBTrailing.constant = maskBTrailingDefault * 0.9;
        _maskBBottom.constant = maskBBottomDefault * 0.9;
        _labelBBottom.constant = labelBBottomDefault * 0.9;
        _buttonBLeading.constant = buttonBLeadingDefault * 0.9;
        _buttonBTrailing.constant = buttonBTrailingDefault * 0.9;
        _buttonBBottom.constant = buttonBBottomDefault * 0.9;
        _selectedAHeight.constant = selectedAHeightDefault * 0.9;
        _selectedBHeight.constant = selectedBHeightDefault * 0.9;
        
        _nvSubViewLeading.constant = nvSubViewLeadingDefault * 0.9;
        _nvSubViewTrailing.constant = nvSubViewTrailingDefault * 0.9;
        _nvSubViewHeight.constant = nvSubViewHeightDefault * 0.9;
        _topLabel1Top.constant = topLabel1TopDefault * 0.9;
        _topLabel1Height.constant = topLabel1HeightDefault * 0.9;
        _topLabel2Top.constant = topLabel2TopDefault * 0.9;
        _topLabel2Bottom.constant = topLabel2BottomDefault * 0.9;
        _topLabel2Height.constant = topLabel2HeightDefault * 0.9;
        _selectedMenu1Leading.constant = selectedMenu1LeadingDefault * 0.9;
        _selectedMenu1Trailing.constant = selectedMenu1TrailingDefault * 0.9;
        _selectedMenu1Bottom.constant = selectedMenu1BottomDefault * 0.9;
        _selectedMenu2Top.constant = selectedMenu2TopDefault * 0.9;
        _selectedMenu2Trailing.constant = selectedMenu2TrailingDefault * 0.9;
        _selectedMenu2Bottom.constant = selectedMenu2BottomDefault * 0.9;
        _selectedMenu3Top.constant = selectedMenu3TopDefault * 0.9;
        _selectedMenu3Trailing.constant = selectedMenu3TrailingDefault * 0.9;
        _selectedMenu3Bottom.constant = selectedMenu3BottomDefault * 0.9;
        _selectedMenu4Trailing.constant = selectedMenu4TrailingDefault * 0.9;
        _selectedMenu4Bottom.constant = selectedMenu4BottomDefault * 0.9;
    }
    // 아이폰 5.5인치
    else if ([UIScreen mainScreen].bounds.size.height == 736) {
        
        _labelA.font = [_labelA.font fontWithSize:28];
        _labelB.font = [_labelB.font fontWithSize:28];
        
        _topLabel1.font = [_topLabel1.font fontWithSize:30];
        _topLabel2.font = [_topLabel2.font fontWithSize:30];
        
        _selectedMenu1.font = [_selectedMenu1.font fontWithSize:17];
        _selectedMenu2.font = [_selectedMenu2.font fontWithSize:17];
        _selectedMenu3.font = [_selectedMenu3.font fontWithSize:17];
        _selectedMenu4.font = [_selectedMenu4.font fontWithSize:17];
        _selectedMenu5.font = [_selectedMenu5.font fontWithSize:17];
        _selectedMenu6.font = [_selectedMenu6.font fontWithSize:17];
        _selectedMenu7.font = [_selectedMenu7.font fontWithSize:17];
        _selectedMenu8.font = [_selectedMenu8.font fontWithSize:17];
        
        _topViewHeight.constant = topViewHeightDefault;
        _homeButtonTop.constant = homeButtonTopDefault;
        _homeButtonLeading.constant = homeButtonLeadingDefault;
        _homeButtonHeight.constant = homeButtonHeightDefault;
        _logoHeight.constant = logoHeightDefault;
        _logoWidth.constant = logoWidthDefault;
        _restartButtonTop.constant = restartButtonTopDefault;
        _restartButtonTrailing.constant = restartButtonTrailingDefault;
        _restartButtonHeight.constant = restartButtonHeightDefault;
        
        _roundViewHeight.constant = roundViewHeightDefault;
        _tournamentBarWidth.constant = tournamentBarWidthDefault;
        _tournament16ImageLeading.constant = tournament16ImageLeadingDefault;
        _tournament16ImageTrailing.constant = tournament16ImageTrailingDefault;
        _tournament16LabelTop.constant = tournament16LabelTopDefault;
        _tournament8ImageTrailing.constant = tournament8ImageTrailingDefault;
        _tournament8LabelTop.constant = tournament8LabelTopDefault;
        _tournament4ImageTrailing.constant = tournament4ImageTrailingDefault;
        _tournament4LabelTop.constant = tournament4LabelTopDefault;
        _tournamentFinalImageTrailing.constant = tournamentFinalImageTrailingDefault;
        _tournamentFinalLabelTop.constant = tournamentFinalLabelTopDefault;
        
        _imageViewALeading.constant = imageViewALeadingDefault;
        _imageViewATrailing.constant = imageViewATrailingDefault;
        _imageViewABottom.constant = imageViewABottomDefault;
        _imageViewAHeight.constant = imageViewAHeightDefault;
        _maskALeading.constant = maskALeadingDefault;
        _maskATrailing.constant = maskATrailingDefault;
        _maskABottom.constant = maskABottomDefault;
        _labelABottom.constant = labelABottomDefault;
        _buttonALeading.constant = buttonALeadingDefault;
        _buttonATrailing.constant = buttonATrailingDefault;
        _buttonABottom.constant = buttonABottomDefault;
        _imageViewBLeading.constant = imageViewBLeadingDefault;
        _imageViewBTrailing.constant = imageViewBTrailingDefault;
        _imageViewBBottom.constant = imageViewBBottomDefault;
        _maskBLeading.constant = maskBLeadingDefault;
        _maskBTrailing.constant = maskBTrailingDefault;
        _maskBBottom.constant = maskBBottomDefault;
        _labelBBottom.constant = labelBBottomDefault;
        _buttonBLeading.constant = buttonBLeadingDefault;
        _buttonBTrailing.constant = buttonBTrailingDefault;
        _buttonBBottom.constant = buttonBBottomDefault;
        _selectedAHeight.constant = selectedAHeightDefault;
        _selectedBHeight.constant = selectedBHeightDefault;
        
        _nvSubViewLeading.constant = nvSubViewLeadingDefault;
        _nvSubViewTrailing.constant = nvSubViewTrailingDefault;
        _nvSubViewHeight.constant = nvSubViewHeightDefault;
        _topLabel1Top.constant = topLabel1TopDefault;
        _topLabel1Height.constant = topLabel1HeightDefault;
        _topLabel2Top.constant = topLabel2TopDefault;
        _topLabel2Bottom.constant = topLabel2BottomDefault;
        _topLabel2Height.constant = topLabel2HeightDefault;
        _selectedMenu1Leading.constant = selectedMenu1LeadingDefault;
        _selectedMenu1Trailing.constant = selectedMenu1TrailingDefault;
        _selectedMenu1Bottom.constant = selectedMenu1BottomDefault;
        _selectedMenu2Top.constant = selectedMenu2TopDefault;
        _selectedMenu2Trailing.constant = selectedMenu2TrailingDefault;
        _selectedMenu2Bottom.constant = selectedMenu2BottomDefault;
        _selectedMenu3Top.constant = selectedMenu3TopDefault;
        _selectedMenu3Trailing.constant = selectedMenu3TrailingDefault;
        _selectedMenu3Bottom.constant = selectedMenu3BottomDefault;
        _selectedMenu4Trailing.constant = selectedMenu4TrailingDefault;
        _selectedMenu4Bottom.constant = selectedMenu4BottomDefault;
    }
}

#pragma mark
#pragma mark - 초기화 메소드

// 토너먼트 초기화 메소드
- (void)initTournament {
    
    // 현재 라운드를 설정
    _tournamentRound = 16;
    
    [self reloadRoundView];
    
    // 이미지 버튼 두 개 동시 터치 막기
    [_imageButtonA setExclusiveTouch:YES];
    [_imageButtonB setExclusiveTouch:YES];
    
    // 버튼 사용 가능
    [_imageButtonA setEnabled:YES];
    [_imageButtonB setEnabled:YES];
    
    // 이미지 숨김 해제
    [_imageViewA setHidden:NO];
    [_imageViewB setHidden:NO];
    
    // 버튼 숨김 해제
    [_imageButtonA setHidden:NO];
    [_imageButtonB setHidden:NO];
    
    // 라벨 숨김 해제
    [_labelA setHidden:NO];
    [_labelB setHidden:NO];
    
    // 마스크 숨김 해제
    [_maskA setHidden:NO];
    [_maskB setHidden:NO];
    
    // 좋아요 숨김
    [_selectedA setHidden:YES];
    [_selectedB setHidden:YES];
    
    // 마스크 이미지 설정
    [_maskA setImage:[UIImage imageNamed:@"mask.png"]];
    [_maskB setImage:[UIImage imageNamed:@"mask.png"]];
    
    // itemA를 생성한다
    _itemA = [GolaItem randomItem];
    // _itemNumberArray에 itemA의 number를 저장한다
    [_itemNumberArray addObject:[NSNumber numberWithInt:_itemA.itemNumber]];
    
    // itemB를 생성한다
    _itemB = [GolaItem randomItem];
    
    // itemB의 number가 _itemNumberArray에 저장된 값과 같은 값이 있는지 확인한다
    // 중복 검사가 true를 반환할 때 까지 반복
    while (![self comparisonNumber:_itemB.itemNumber With:_itemNumberArray]) {
        // false, 중복일 경우, itemB를 리셋한다
        _itemB = [_itemB resetItem];
    }
    
    // 위 중복 검사를 마치고
    // _itemNumberArray에 itemB의 number를 저장한다
    [_itemNumberArray addObject:[NSNumber numberWithInt:_itemB.itemNumber]];
    
    // imageView 각각에 item 이미지 설정
    [_imageViewA setImage:_itemA.itemImage];
    [_imageViewB setImage:_itemB.itemImage];
    
    // label 각각에 item 이름 설정
    [_labelA setText:_itemA.itemName];
    [_labelB setText:_itemB.itemName];
}

- (void)initRoundView {
    /*
    // 이미지 색상 설정
    [_tournament16ImageView setImage:[_tournament16ImageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [_tournament16ImageView setTintColor:[UIColor colorWithRed:255/255.0 green:220/255.0 blue:36/255.0 alpha:1.0]];
    [_tournament8ImageView setImage:[_tournament8ImageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [_tournament8ImageView setTintColor:[UIColor colorWithRed:84/255.0 green:174/255.0 blue:0/255.0 alpha:1.0]];
    [_tournament4ImageView setImage:[_tournament4ImageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [_tournament4ImageView setTintColor:[UIColor colorWithRed:0/255.0 green:114/255.0 blue:208/255.0 alpha:1.0]];
    [_tournamentFinalImageView setImage:[_tournamentFinalImageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [_tournamentFinalImageView setTintColor:[UIColor colorWithRed:255/255.0 green:69/255.0 blue:52/255.0 alpha:1.0]];
    */
    
    // 라운드 이미지 반투명 상태
    [_tournament16ImageView setImage:[UIImage imageNamed:@"tournament16Oval"]];
    [_tournament8ImageView setImage:[UIImage imageNamed:@"tournament8Oval"]];
    [_tournament4ImageView setImage:[UIImage imageNamed:@"tournament4Oval"]];
    [_tournamentFinalImageView setImage:[UIImage imageNamed:@"tournamentFinalOval"]];
    
    // 라벨 설정
    [_tournament16Label setTextColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.4]];
    [_tournament8Label setTextColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.4]];
    [_tournament4Label setTextColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.4]];
    [_tournamentFinalLabel setTextColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.4]];
}

- (void)reloadRoundView {
    
    [self initRoundView];
    
    // 16강
    if (_tournamentRound > 9) {
        [_tournament16ImageView setImage:[UIImage imageNamed:@"tournament16"]];
        [_tournament16Label setTextColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.8]];
    }
    // 8강
    else if ((_tournamentRound <= 9) && (_tournamentRound > 5)) {
        [_tournament8ImageView setImage:[UIImage imageNamed:@"tournament8"]];
        [_tournament8Label setTextColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.8]];
    }
    // 4강
    else if ((_tournamentRound <= 5) && (_tournamentRound > 3)) {
        [_tournament4ImageView setImage:[UIImage imageNamed:@"tournament4"]];
        [_tournament4Label setTextColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.8]];
    }
    // 결승
    else if (_tournamentRound <= 3) {
        [_tournamentFinalImageView setImage:[UIImage imageNamed:@"tournamentFinal"]];
        [_tournamentFinalLabel setTextColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.8]];
    }
}

#pragma mark
#pragma mark - 토너먼트 메소드

// 아이템 중복 검사 메소드
- (BOOL)comparisonNumber:(int)number With:(NSMutableArray *)numberArray {
    
    NSMutableArray *array = numberArray;
    
    for (int i = 0; i < [array count]; i++) {
        // 중복된 아이템이 있을 경우
        if ([NSNumber numberWithInt:number] == array[i]) {
            // flase
            return false;
        }
    }
    // 없을 경우 true
    return true;
}

// 중복되지 않는 랜덤 Item을 만들고 ImageViewA, B의 Image로 설정한다
- (void)makeRandomItemSetImageView {
    
    // itemA를 생성한다
    _itemA = [GolaItem randomItem];
    
    // itemA의 number가 _itemNumberArray에 저장된 값과 같은 값이 있는지 확인한다
    // 중복 검사가 true를 반환할 때 까지 반복
    while (![self comparisonNumber:_itemA.itemNumber With:_itemNumberArray]) {
        // false, 중복일 경우, itemB를 리셋한다
        _itemA = [_itemA resetItem];
    }
    
    // 위 중복 검사를 마치고
    // _itemNumberArray에 itemA의 number를 저장한다
    [_itemNumberArray addObject:[NSNumber numberWithInt:_itemA.itemNumber]];
    
    // itemB를 생성한다
    _itemB = [GolaItem randomItem];
    
    // itemB의 number가 _itemNumberArray에 저장된 값과 같은 값이 있는지 확인한다
    // 중복 검사가 true를 반환할 때 까지 반복
    while (![self comparisonNumber:_itemB.itemNumber With:_itemNumberArray]) {
        // false, 중복일 경우, itemB를 리셋한다
        _itemB = [_itemB resetItem];
    }
    
    // 위 중복 검사를 마치고
    // _itemNumberArray에 itemB의 number를 저장한다
    [_itemNumberArray addObject:[NSNumber numberWithInt:_itemB.itemNumber]];
    
    // imageView 각각에 item 이미지 설정
    [_imageViewA setImage:_itemA.itemImage];
    [_imageViewB setImage:_itemB.itemImage];
    
    // label 각각에 item 이름 설정
    [_labelA setText:_itemA.itemName];
    [_labelB setText:_itemB.itemName];
}

// _ItemA 승리 하였을 경우 처리
-(void)tournamentWinnerItemA {
    
    // 결승
    if (_tournamentRound == 2) {
        // 최종 결과 뷰 출력
        
        GolaTournamentResultViewController *resultViewController = [[GolaTournamentResultViewController alloc] initWithItem:_itemA];
        
        [self.navigationController pushViewController:resultViewController animated:NO];
        
    }
    else {
        // 32강
        if ((_tournamentRound <= 32) && (_tournamentRound > 16)) {
            if (_tournamentRound == 17) {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf32WinnerArray addObject:_itemA];
                
                // 16강 최초 설정
                // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                count = 0;
                _itemA = [_RoundOf32WinnerArray objectAtIndex:count++];
                _itemB = [_RoundOf32WinnerArray objectAtIndex:count++];
                
                // imageView 각각에 item 이미지 설정
                [_imageViewA setImage:_itemA.itemImage];
                [_imageViewB setImage:_itemB.itemImage];
                
                // label 각각에 item 이름 설정
                [_labelA setText:_itemA.itemName];
                [_labelB setText:_itemB.itemName];
                
                // 16강 시작 전 라운드 알림 뷰를 띄운다
                [self appearNotificationView:_RoundOf32WinnerArray];
            }
            else {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf32WinnerArray addObject:_itemA];
                
                [self makeRandomItemSetImageView];
            }
            _tournamentRound = _tournamentRound - 1;
        }
        // 16강
        else if ((_tournamentRound <= 16) && (_tournamentRound > 8)) {
            if (_tournamentRound == 9) {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf16WinnerArray addObject:_itemA];
                
                // 8강 최초 설정
                count = 0;
                
                // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                _itemA = [_RoundOf16WinnerArray objectAtIndex:count++];
                _itemB = [_RoundOf16WinnerArray objectAtIndex:count++];
                
                // imageView 각각에 item 이미지 설정
                [_imageViewA setImage:_itemA.itemImage];
                [_imageViewB setImage:_itemB.itemImage];
                
                // label 각각에 item 이름 설정
                [_labelA setText:_itemA.itemName];
                [_labelB setText:_itemB.itemName];
                
                // 8강 시작 전 라운드 알림 뷰를 띄운다
                [self appearNotificationView:_RoundOf16WinnerArray];
            }
            else {
                // 16강 부터 시작일 경우
                if (_RoundOf32WinnerArray.count == 0) {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf16WinnerArray addObject:_itemA];
                    
                    [self makeRandomItemSetImageView];
                }
                else {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf16WinnerArray addObject:_itemA];
                    
                    // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                    _itemA = [_RoundOf32WinnerArray objectAtIndex:count++];
                    _itemB = [_RoundOf32WinnerArray objectAtIndex:count++];
                    
                    // imageView 각각에 item 이미지 설정
                    [_imageViewA setImage:_itemA.itemImage];
                    [_imageViewB setImage:_itemB.itemImage];
                    
                    // label 각각에 item 이름 설정
                    [_labelA setText:_itemA.itemName];
                    [_labelB setText:_itemB.itemName];
                }
            }
            _tournamentRound = _tournamentRound - 1;
        }
        // 8강
        else if ((_tournamentRound <= 8) && (_tournamentRound > 4)) {
            if (_tournamentRound == 5) {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf8WinnerArray addObject:_itemA];
                
                // 4강 최초 설정
                count = 0;
                
                // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                _itemA = [_RoundOf8WinnerArray objectAtIndex:count++];
                _itemB = [_RoundOf8WinnerArray objectAtIndex:count++];
                
                // imageView 각각에 item 이미지 설정
                [_imageViewA setImage:_itemA.itemImage];
                [_imageViewB setImage:_itemB.itemImage];
                
                // label 각각에 item 이름 설정
                [_labelA setText:_itemA.itemName];
                [_labelB setText:_itemB.itemName];
                
                // 4강 시작 전 라운드 알림 뷰를 띄운다
                [self appearNotificationView:_RoundOf8WinnerArray];
            }
            else {
                
                // 8강 부터 시작일 경우
                if (_RoundOf16WinnerArray.count == 0) {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf8WinnerArray addObject:_itemA];
                    
                    [self makeRandomItemSetImageView];
                }
                else {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf8WinnerArray addObject:_itemA];
                    
                    // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                    _itemA = [_RoundOf16WinnerArray objectAtIndex:count++];
                    _itemB = [_RoundOf16WinnerArray objectAtIndex:count++];
                    
                    // imageView 각각에 item 이미지 설정
                    [_imageViewA setImage:_itemA.itemImage];
                    [_imageViewB setImage:_itemB.itemImage];
                    
                    // label 각각에 item 이름 설정
                    [_labelA setText:_itemA.itemName];
                    [_labelB setText:_itemB.itemName];
                }
            }
            _tournamentRound = _tournamentRound - 1;
        }
        // 4강
        else if ((_tournamentRound <= 4) && (_tournamentRound > 2)) {
            if (_tournamentRound == 3) {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf4WinnerArray addObject:_itemA];
                
                // 결승 최초 설정
                count = 0;
                
                // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                _itemA = [_RoundOf4WinnerArray objectAtIndex:count++];
                _itemB = [_RoundOf4WinnerArray objectAtIndex:count++];
                
                // imageView 각각에 item 이미지 설정
                [_imageViewA setImage:_itemA.itemImage];
                [_imageViewB setImage:_itemB.itemImage];
                
                // label 각각에 item 이름 설정
                [_labelA setText:_itemA.itemName];
                [_labelB setText:_itemB.itemName];
                
                // 결승 시작 전 라운드 알림 뷰를 띄운다
                [self appearNotificationView:_RoundOf4WinnerArray];
            }
            else {
                // 4강 부터 시작일 경우
                if (_RoundOf8WinnerArray.count == 0) {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf4WinnerArray addObject:_itemA];
                    
                    [self makeRandomItemSetImageView];
                }
                else {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf4WinnerArray addObject:_itemA];
                    
                    // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                    _itemA = [_RoundOf8WinnerArray objectAtIndex:count++];
                    _itemB = [_RoundOf8WinnerArray objectAtIndex:count++];
                    
                    // imageView 각각에 item 이미지 설정
                    [_imageViewA setImage:_itemA.itemImage];
                    [_imageViewB setImage:_itemB.itemImage];
                    
                    // label 각각에 item 이름 설정
                    [_labelA setText:_itemA.itemName];
                    [_labelB setText:_itemB.itemName];
                }
            }
            _tournamentRound = _tournamentRound - 1;
        }
    }
}

// _ItemB 승리 하였을 경우 처리
- (void)tournamentWinnerItemB {
    
    // 결승
    if (_tournamentRound == 2) {
        // 최종 결과 뷰 출력
        GolaTournamentResultViewController *resultViewController = [[GolaTournamentResultViewController alloc] initWithItem:_itemB];
        
        [self.navigationController pushViewController:resultViewController animated:NO];
    }
    else {
        // 32강
        if ((_tournamentRound <= 32) && (_tournamentRound > 16)) {
            if (_tournamentRound == 17) {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf32WinnerArray addObject:_itemB];
                
                // 16강 최초 설정
                // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                count = 0;
                
                _itemA = [_RoundOf32WinnerArray objectAtIndex:count++];
                _itemB = [_RoundOf32WinnerArray objectAtIndex:count++];
                
                // imageView 각각에 item 이미지 설정
                [_imageViewA setImage:_itemA.itemImage];
                [_imageViewB setImage:_itemB.itemImage];
                
                // label 각각에 item 이름 설정
                [_labelA setText:_itemA.itemName];
                [_labelB setText:_itemB.itemName];
                
                // 16강 시작 전 라운드 알림 뷰를 띄운다
                [self appearNotificationView:_RoundOf32WinnerArray];
            }
            else {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf32WinnerArray addObject:_itemB];
                
                [self makeRandomItemSetImageView];
            }
            _tournamentRound = _tournamentRound - 1;
        }
        // 16강
        else if ((_tournamentRound <= 16) && (_tournamentRound > 8)) {
            if (_tournamentRound == 9) {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf16WinnerArray addObject:_itemB];
                
                // 8강 최초 설정
                count = 0;
                
                // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                _itemA = [_RoundOf16WinnerArray objectAtIndex:count++];
                _itemB = [_RoundOf16WinnerArray objectAtIndex:count++];
                
                // imageView 각각에 item 이미지 설정
                [_imageViewA setImage:_itemA.itemImage];
                [_imageViewB setImage:_itemB.itemImage];
                
                // label 각각에 item 이름 설정
                [_labelA setText:_itemA.itemName];
                [_labelB setText:_itemB.itemName];
                
                // 8강 시작 전 라운드 알림 뷰를 띄운다
                [self appearNotificationView:_RoundOf16WinnerArray];
            }
            else {
                // 16강 부터 시작일 경우
                if (_RoundOf32WinnerArray.count == 0) {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf16WinnerArray addObject:_itemB];
                    
                    [self makeRandomItemSetImageView];
                }
                else {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf16WinnerArray addObject:_itemB];
                    
                    // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                    _itemA = [_RoundOf32WinnerArray objectAtIndex:count++];
                    _itemB = [_RoundOf32WinnerArray objectAtIndex:count++];
                    
                    // imageView 각각에 item 이미지 설정
                    [_imageViewA setImage:_itemA.itemImage];
                    [_imageViewB setImage:_itemB.itemImage];
                    
                    // label 각각에 item 이름 설정
                    [_labelA setText:_itemA.itemName];
                    [_labelB setText:_itemB.itemName];
                    
                }
            }
            _tournamentRound = _tournamentRound - 1;
        }
        // 8강
        else if ((_tournamentRound <= 8) && (_tournamentRound > 4)) {
            if (_tournamentRound == 5) {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf8WinnerArray addObject:_itemB];
                
                // 4강 최초 설정
                count = 0;
                
                // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                _itemA = [_RoundOf8WinnerArray objectAtIndex:count++];
                _itemB = [_RoundOf8WinnerArray objectAtIndex:count++];
                
                // imageView 각각에 item 이미지 설정
                [_imageViewA setImage:_itemA.itemImage];
                [_imageViewB setImage:_itemB.itemImage];
                
                // label 각각에 item 이름 설정
                [_labelA setText:_itemA.itemName];
                [_labelB setText:_itemB.itemName];
                
                // 4강 시작 전 라운드 알림 뷰를 띄운다
                [self appearNotificationView:_RoundOf8WinnerArray];
            }
            else {
                // 8강 부터 시작일 경우
                if (_RoundOf16WinnerArray.count == 0) {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf8WinnerArray addObject:_itemB];
                    
                    [self makeRandomItemSetImageView];
                }
                else {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf8WinnerArray addObject:_itemB];
                    
                    // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                    _itemA = [_RoundOf16WinnerArray objectAtIndex:count++];
                    _itemB = [_RoundOf16WinnerArray objectAtIndex:count++];
                    
                    // imageView 각각에 item 이미지 설정
                    [_imageViewA setImage:_itemA.itemImage];
                    [_imageViewB setImage:_itemB.itemImage];
                    
                    // label 각각에 item 이름 설정
                    [_labelA setText:_itemA.itemName];
                    [_labelB setText:_itemB.itemName];
                }
            }
            _tournamentRound = _tournamentRound - 1;
        }
        // 4강
        else if ((_tournamentRound <= 4) && (_tournamentRound > 2)) {
            if (_tournamentRound == 3) {
                // 선택한 이미지를 위너 배열에 저장
                [_RoundOf4WinnerArray addObject:_itemB];
                
                // 결승 최초 설정
                count = 0;
                
                // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                _itemA = [_RoundOf4WinnerArray objectAtIndex:count++];
                _itemB = [_RoundOf4WinnerArray objectAtIndex:count++];
                
                // imageView 각각에 item 이미지 설정
                [_imageViewA setImage:_itemA.itemImage];
                [_imageViewB setImage:_itemB.itemImage];
                
                // label 각각에 item 이름 설정
                [_labelA setText:_itemA.itemName];
                [_labelB setText:_itemB.itemName];
                
                // 결승 시작 전 라운드 알림 뷰를 띄운다
                [self appearNotificationView:_RoundOf4WinnerArray];
            }
            else {
                // 4강 부터 시작일 경우
                if (_RoundOf8WinnerArray.count == 0) {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf4WinnerArray addObject:_itemB];
                    
                    [self makeRandomItemSetImageView];
                }
                else {
                    // 선택한 이미지를 위너 배열에 저장
                    [_RoundOf4WinnerArray addObject:_itemB];
                    
                    // 이전 라운드에서 가장 먼저 입력된 순으로 item을 가져온다
                    _itemA = [_RoundOf8WinnerArray objectAtIndex:count++];
                    _itemB = [_RoundOf8WinnerArray objectAtIndex:count++];
                    
                    // imageView 각각에 item 이미지 설정
                    [_imageViewA setImage:_itemA.itemImage];
                    [_imageViewB setImage:_itemB.itemImage];
                    
                    // label 각각에 item 이름 설정
                    [_labelA setText:_itemA.itemName];
                    [_labelB setText:_itemB.itemName];
                }
            }
            _tournamentRound = _tournamentRound - 1;
        }
    }
}

- (void)timeoutHandler:(NSTimer *)timer {
    
    // 애니메이션 처리
    [UIView transitionWithView:_imageViewA
                      duration:0.3f
                       //options:UIViewAnimationOptionTransitionCurlUp
                       //options:UIViewAnimationOptionTransitionCurlDown
                       //options:UIViewAnimationOptionTransitionFlipFromTop
                       //options:UIViewAnimationOptionTransitionFlipFromLeft
                       //options:UIViewAnimationOptionTransitionFlipFromRight
                       options:UIViewAnimationOptionTransitionFlipFromBottom
                       //options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        // 버튼 잠시 실행 중지 해제
                        [_imageButtonA setEnabled:YES];
                        // 라벨, 마스크 숨김 해제
                        [_labelA setHidden:NO];
                        [_maskA setHidden:NO];
                        // 좋아요 이미지 표시 숨김
                        [_selectedA setHidden:YES];
                        // 마스크, 라벨 원래 값으로 복원
                        [_maskA setImage:[UIImage imageNamed:@"mask.png"]];
                        [_labelA setTextColor:[UIColor colorWithWhite:255/255 alpha:1.0]];
                    }
                    completion:nil];
    
    [UIView transitionWithView:_imageViewB
                      duration:0.3f
                       //options:UIViewAnimationOptionTransitionCurlUp
                       //options:UIViewAnimationOptionTransitionCurlDown
                       //options:UIViewAnimationOptionTransitionFlipFromTop
                       //options:UIViewAnimationOptionTransitionFlipFromLeft
                       //options:UIViewAnimationOptionTransitionFlipFromRight
                       options:UIViewAnimationOptionTransitionFlipFromBottom
                       //options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        // 버튼 잠시 실행 중지 해제
                        [_imageButtonB setEnabled:YES];
                        // 라벨, 마스크 숨김 해제
                        [_labelB setHidden:NO];
                        [_maskB setHidden:NO];
                        // 좋아요 이미지 표시 숨김
                        [_selectedB setHidden:YES];
                        // 마스크, 라벨 원래 값으로 복원
                        [_maskB setImage:[UIImage imageNamed:@"mask.png"]];
                        [_labelB setTextColor:[UIColor colorWithWhite:255/255 alpha:1.0]];
                    }
                    completion:nil];
    
    if (flag == true) {
        [self tournamentWinnerItemA];
    }
    else {
        [self tournamentWinnerItemB];
    }
    
    [timer invalidate];
}



#pragma mark
#pragma mark - Subview envents

- (void)viewTouched {
    
    // 라운드 바를 갱신한다
    [self reloadRoundView];
    
    [_notificationView removeFromSuperview];
    
    [_imageViewA setHidden:NO];
    [_imageViewB setHidden:NO];
    [_imageButtonA setHidden:NO];
    [_imageButtonB setHidden:NO];
    [_maskA setHidden:NO];
    [_maskB setHidden:NO];
    [_labelA setHidden:NO];
    [_labelB setHidden:NO];
    
    // 화면에서 pulse를 지운다
    [_pulseA removeFromSuperlayer];
    [_pulseB removeFromSuperlayer];
    [_pulseC removeFromSuperlayer];
    
}

- (void)appearNotificationView:(NSMutableArray *)roundArray {
    
    [_notificationView setFrame:_contentView.frame];
    [self.view addSubview:_notificationView];
    
    [_imageViewA setHidden:YES];
    [_imageViewB setHidden:YES];
    [_imageButtonA setHidden:YES];
    [_imageButtonB setHidden:YES];
    [_maskA setHidden:YES];
    [_maskB setHidden:YES];
    [_labelA setHidden:YES];
    [_labelB setHidden:YES];
    
    [_selectedMenu1 setHidden:NO];
    [_selectedMenu2 setHidden:NO];
    [_selectedMenu3 setHidden:NO];
    [_selectedMenu4 setHidden:NO];
    [_selectedMenu5 setHidden:NO];
    [_selectedMenu6 setHidden:NO];
    [_selectedMenu7 setHidden:NO];
    [_selectedMenu8 setHidden:NO];
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGPoint pulsePoint;
    CGFloat pulseRadius;
    
    // 아이폰 3.5인치 0.652
    if ([UIScreen mainScreen].bounds.size.height == 480) {
        pulseRadius = 60;
        pulsePoint = CGPointMake(screenBounds.size.width / 2.0, screenBounds.size.height - (topViewHeightDefault * 0.652) - (roundViewHeightDefault * 0.652) - 50);
    }
    // 아이폰 4인치 0.77
    else if ([UIScreen mainScreen].bounds.size.height == 568) {
        pulseRadius = 80;
        pulsePoint = CGPointMake(screenBounds.size.width / 2.0, screenBounds.size.height - (topViewHeightDefault * 0.77) - (roundViewHeightDefault * 0.77) - 40);
    }
    
    // 아이폰 4.7인치 0.9
    else if ([UIScreen mainScreen].bounds.size.height == 667) {
        pulseRadius = 90;
        pulsePoint = CGPointMake(screenBounds.size.width / 2.0, screenBounds.size.height - (topViewHeightDefault * 0.9) - (roundViewHeightDefault * 0.9) - 40);
    }
    // 아이폰 5.5인치
    else if ([UIScreen mainScreen].bounds.size.height == 736) {
        pulseRadius = 100;
        pulsePoint = CGPointMake(screenBounds.size.width / 2.0, screenBounds.size.height - (topViewHeightDefault) - (roundViewHeightDefault) - 40);
    }
    
    _pulseA = [[GolaPulse alloc] initWithRadius:pulseRadius
                                   scaleToValue:0.0
                                 scaleFromValue:1.0
                               opacityFromValue:1.0
                                 opacityToValue:0.5
                                       colorRed:255
                                     colorGreen:255
                                      colorBlue:255
                                     colorAlpha:1.0
                                       duration:1.0];
    _pulseA.position = pulsePoint;
    [_notificationView.layer addSublayer:_pulseA];
   
    _pulseB = [[GolaPulse alloc] initWithRadius:pulseRadius
                                   scaleToValue:1.0
                                 scaleFromValue:1.5
                               opacityFromValue:1.0
                                 opacityToValue:0.5
                                       colorRed:255
                                     colorGreen:255
                                      colorBlue:255
                                     colorAlpha:0.5
                                       duration:1.0];
    _pulseB.position = pulsePoint;
    [_notificationView.layer addSublayer:_pulseB];
    
    _pulseC = [[GolaPulse alloc] initWithRadius:pulseRadius
                                   scaleToValue:1.5
                                 scaleFromValue:2.0
                               opacityFromValue:1.0
                                 opacityToValue:0.0
                                       colorRed:255
                                     colorGreen:255
                                      colorBlue:255
                                     colorAlpha:0.3
                                       duration:1.0];
    _pulseC.position = pulsePoint;
    [_notificationView.layer addSublayer:_pulseC];
    
    
    // 16강 종료
    if (_tournamentRound == 9) {
        [_nvSubView setBackgroundColor:[UIColor colorWithRed:255/255.0 green:48/255.0 blue:48/255.0 alpha:1.0]];
        
        [_topLabel1 setText:@"16강 종료"];
        [_topLabel2 setText:@"터치하면 8강 시작!"];
        GolaItem *item1 = [roundArray objectAtIndex:0];
        [_selectedMenu1 setText:item1.itemName];
        GolaItem *item2 = [roundArray objectAtIndex:1];
        [_selectedMenu2 setText:item2.itemName];
        GolaItem *item3 = [roundArray objectAtIndex:2];
        [_selectedMenu3 setText:item3.itemName];
        GolaItem *item4 = [roundArray objectAtIndex:3];
        [_selectedMenu4 setText:item4.itemName];
        GolaItem *item5 = [roundArray objectAtIndex:4];
        [_selectedMenu5 setText:item5.itemName];
        GolaItem *item6 = [roundArray objectAtIndex:5];
        [_selectedMenu6 setText:item6.itemName];
        GolaItem *item7 = [roundArray objectAtIndex:6];
        [_selectedMenu7 setText:item7.itemName];
        GolaItem *item8 = [roundArray objectAtIndex:7];
        [_selectedMenu8 setText:item8.itemName];
    }
    // 8강 종료
    else if(_tournamentRound == 5) {
        [_nvSubView setBackgroundColor:[UIColor colorWithRed:0/255.0 green:174/255.0 blue:84/255.0 alpha:1.0]];
        [_topLabel1 setText:@"8강 종료"];
        [_topLabel2 setText:@"터치하면 4강 시작!"];
        GolaItem *item1 = [roundArray objectAtIndex:0];
        [_selectedMenu1 setText:item1.itemName];
        GolaItem *item2 = [roundArray objectAtIndex:1];
        [_selectedMenu2 setText:item2.itemName];
        GolaItem *item3 = [roundArray objectAtIndex:2];
        [_selectedMenu3 setText:item3.itemName];
        GolaItem *item4 = [roundArray objectAtIndex:3];
        [_selectedMenu4 setText:item4.itemName];
        [_selectedMenu5 setHidden:YES];
        [_selectedMenu6 setHidden:YES];
        [_selectedMenu7 setHidden:YES];
        [_selectedMenu8 setHidden:YES];
    }
    // 4강 종료
    else if(_tournamentRound == 3) {
        [_nvSubView setBackgroundColor:[UIColor colorWithRed:0/255.0 green:114/255.0 blue:208/255.0 alpha:1.0]];
        [_topLabel1 setText:@"4강 종료"];
        [_topLabel2 setText:@"터치하면 결승 시작!"];
        GolaItem *item1 = [roundArray objectAtIndex:0];
        [_selectedMenu2 setText:item1.itemName];
        GolaItem *item2 = [roundArray objectAtIndex:1];
        [_selectedMenu3 setText:item2.itemName];
        [_selectedMenu1 setHidden:YES];
        [_selectedMenu4 setHidden:YES];
        [_selectedMenu5 setHidden:YES];
        [_selectedMenu6 setHidden:YES];
        [_selectedMenu7 setHidden:YES];
        [_selectedMenu8 setHidden:YES];
    }
    
    
    // 화면을 탭할 경우 이벤트 처리.
    UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTouched)];
    tapGesture.numberOfTapsRequired = 1;
    
    [_notificationView addGestureRecognizer:tapGesture];
}
    



#pragma mark
#pragma mark - 액션 메소드

// 종료하고 main 뷰로 이동
- (IBAction)homeTapped:(id)sender {
    
    NSLog(@"exitTapped");
    
    [self.navigationController popToRootViewControllerAnimated:NO];
}

// 토너먼트를 다시 시작한다
- (IBAction)restartTapped:(id)sender {
    
    // 화면에서 pulse를 지운다
    [_pulseA removeFromSuperlayer];
    [_pulseB removeFromSuperlayer];
    [_pulseC removeFromSuperlayer];
    
    // 알림 뷰를 제거
    [_notificationView removeFromSuperview];
    
    // _itemNumberArray 초기화
    _itemNumberArray = [[NSMutableArray alloc] init];
    // _RoundWinnerArray 초기화
    _RoundOf32WinnerArray = [[NSMutableArray alloc] init];
    _RoundOf16WinnerArray = [[NSMutableArray alloc] init];
    _RoundOf8WinnerArray = [[NSMutableArray alloc] init];
    _RoundOf4WinnerArray = [[NSMutableArray alloc] init];
    
    // 토너먼트를 다시시작한다
    [self initTournament];
}

// imageViewA에 관한 액션
- (IBAction)imageATapped:(id)sender {

    NSLog(@"imageATapped");

    flag = true;
    
    // 버튼 잠시 실행 중지
    [_imageButtonA setEnabled:NO];
    [_imageButtonB setEnabled:NO];
    
    
    // 선택 안된 이미지의 라벨, 마스크를 숨긴다
    //[_labelB setHidden:YES];
    //[_maskB setHidden:YES];
    
    // 선택 안된 이미지의 마스크, 라벨을 변경한다
    [_maskB setImage:[UIImage imageNamed:@"mask3.png"]];
    [_maskB setAlpha:0.9];
    [_labelB setTextColor:[UIColor colorWithWhite:255/255 alpha:0.8]];
    
    // 좋아요 이미지 표시 숨김 해제
    [_selectedA setHidden:NO];
    
    
    // x 이미지
    if (_tournamentRound > 8) {
        //[_imageViewB setImage:[UIImage imageNamed:@"cardXRed.png"]];
        [_selectedA setImage:[UIImage imageNamed:@"selectedRed.png"]];
    }
    else if ((_tournamentRound <= 8) && (_tournamentRound > 4)) {
        //[_imageViewB setImage:[UIImage imageNamed:@"cardXGreen.png"]];
        [_selectedA setImage:[UIImage imageNamed:@"selectedGreen.png"]];
    }
    else if ((_tournamentRound <= 4) && (_tournamentRound > 2)) {
        //[_imageViewB setImage:[UIImage imageNamed:@"cardXBlue.png"]];
        [_selectedA setImage:[UIImage imageNamed:@"selectedBlue.png"]];
    }
    else if (_tournamentRound <= 2) {
        [_selectedA setImage:[UIImage imageNamed:@"selectedYellow.png"]];
    }
    
    if (_tournamentRound > 2) {
        [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(timeoutHandler:) userInfo:nil repeats:NO];
    }
    else {
        [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(tournamentWinnerItemA) userInfo:nil repeats:NO];
        //[self tournamentWinnerItemA];
    }
    
}


// imageViewB에 관한 액션
- (IBAction)imageBTapped:(id)sender {
    
    NSLog(@"imageBTapped");
    
    flag = false;
    
    // 버튼 잠시 실행 중지
    [_imageButtonA setEnabled:NO];
    [_imageButtonB setEnabled:NO];
    
    // 선택 안된 이미지의 라벨, 마스크를 숨긴다
    //[_labelA setHidden:YES];
    //[_maskA setHidden:YES];
    
    // 선택 안된 이미지의 마스크, 라벨을 변경한다
    [_maskA setImage:[UIImage imageNamed:@"mask3.png"]];
    [_maskA setAlpha:0.9];
    [_labelA setTextColor:[UIColor colorWithWhite:255/255 alpha:0.8]];
    
    // 좋아요 이미지 표시 숨김 해제
    [_selectedB setHidden:NO];
    
    // x 이미지
    if (_tournamentRound > 8) {
        //[_imageViewA setImage:[UIImage imageNamed:@"cardXRed.png"]];
        [_selectedB setImage:[UIImage imageNamed:@"selectedRed.png"]];
    }
    else if ((_tournamentRound <= 8) && (_tournamentRound > 4)) {
        //[_imageViewA setImage:[UIImage imageNamed:@"cardXGreen.png"]];
        [_selectedB setImage:[UIImage imageNamed:@"selectedGreen.png"]];
    }
    else if ((_tournamentRound <= 4) && (_tournamentRound > 2)) {
        //[_imageViewA setImage:[UIImage imageNamed:@"cardXBlue.png"]];
        [_selectedB setImage:[UIImage imageNamed:@"selectedBlue.png"]];
    }
    else if (_tournamentRound <= 2) {
        [_selectedB setImage:[UIImage imageNamed:@"selectedYellow.png"]];
    }
    
    if (_tournamentRound > 2) {
        [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(timeoutHandler:) userInfo:nil repeats:NO];
    }
    else {
        [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(tournamentWinnerItemB) userInfo:nil repeats:NO];
        //[self tournamentWinnerItemB];
    }
}


@end
