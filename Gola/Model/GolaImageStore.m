//
//  GolaImageStore.m
//  Gola
//
//  Created by 최영준 on 2016. 7. 15..
//  Copyright © 2016년 Gola. All rights reserved.
//

#import "GolaImageStore.h"

@implementation GolaImageStore

#pragma mark
#pragma mark - 초기화 메소드

// initImageStore는 싱글톤이다
+ (instancetype)initImageStore {
    
    static GolaImageStore *imageStore = nil;
    
    static dispatch_once_t onceToken;
    _dispatch_once(&onceToken, ^{
        imageStore = [[self alloc] initPrivate];
    });
    
    return imageStore;
}

// 진짜 초기화 메소드
- (instancetype)initPrivate {
    
    self = [super init];
    
    if (self) {
        // _imageStore에 키값과 이미지를 저장한다
        if (!_imageStore) {
            _imageStore = @{ @"0" : @[@"알밥", [UIImage imageNamed:@"gola_img_0.jpg"]],
                             @"1" : @[@"백반", [UIImage imageNamed:@"gola_img_1.jpg"]],
                             @"2" : @[@"비빔밥", [UIImage imageNamed:@"gola_img_2.jpg"]],
                             @"3" : @[@"볶음밥", [UIImage imageNamed:@"gola_img_3.jpg"]],
                             @"4" : @[@"보쌈", [UIImage imageNamed:@"gola_img_4.jpg"]],
                             @"5" : @[@"부대찌개", [UIImage imageNamed:@"gola_img_5.jpg"]],
                             @"6" : @[@"불고기", [UIImage imageNamed:@"gola_img_6.jpg"]],
                             @"7" : @[@"치킨", [UIImage imageNamed:@"gola_img_7.jpg"]],
                             @"8" : @[@"소고기", [UIImage imageNamed:@"gola_img_8.jpg"]],
                             @"9" : @[@"카레", [UIImage imageNamed:@"gola_img_9.jpg"]],
                             @"10" : @[@"닭갈비", [UIImage imageNamed:@"gola_img_10.jpg"]],
                             
                             @"11" : @[@"닭볶음탕", [UIImage imageNamed:@"gola_img_11.jpg"]],
                             @"12" : @[@"떡볶이", [UIImage imageNamed:@"gola_img_12.jpg"]],
                             @"13" : @[@"돈까스", [UIImage imageNamed:@"gola_img_13.jpg"]],
                             @"14" : @[@"오징어덮밥", [UIImage imageNamed:@"gola_img_14.jpg"]],
                             @"15" : @[@"갈비찜", [UIImage imageNamed:@"gola_img_15.jpg"]],
                             @"16" : @[@"감자탕", [UIImage imageNamed:@"gola_img_16.jpg"]],
                             @"17" : @[@"삼겹살", [UIImage imageNamed:@"gola_img_17.jpg"]],
                             @"18" : @[@"삼계탕", [UIImage imageNamed:@"gola_img_18.jpg"]],
                             @"19" : @[@"순두부찌개", [UIImage imageNamed:@"gola_img_19.jpg"]],
                             @"20" : @[@"쌀국수", [UIImage imageNamed:@"gola_img_20.jpg"]],
                             
                             @"21" : @[@"쌈밥", [UIImage imageNamed:@"gola_img_21.jpg"]],
                             @"22" : @[@"스테이크", [UIImage imageNamed:@"gola_img_22.jpg"]],
                             @"23" : @[@"초밥", [UIImage imageNamed:@"gola_img_23.jpg"]],
                             @"24" : @[@"롤", [UIImage imageNamed:@"gola_img_24.jpg"]],
                             @"25" : @[@"탕수육", [UIImage imageNamed:@"gola_img_25.jpg"]],
                             @"26" : @[@"우동", [UIImage imageNamed:@"gola_img_26.jpg"]],
                             @"27" : @[@"양꼬치", [UIImage imageNamed:@"gola_img_27.jpg"]],
                             @"28" : @[@"짬뽕", [UIImage imageNamed:@"gola_img_28.jpg"]],
                             @"29" : @[@"짜장면", [UIImage imageNamed:@"gola_img_29.jpg"]],
                             @"30" : @[@"찜닭", [UIImage imageNamed:@"gola_img_30.jpg"]],
                             
                             @"31" : @[@"해물탕", [UIImage imageNamed:@"gola_img_31.jpg"]],
                             @"32" : @[@"해물찜", [UIImage imageNamed:@"gola_img_32.jpg"]],
                             @"33" : @[@"햄버거", [UIImage imageNamed:@"gola_img_33.jpg"]],
                             @"34" : @[@"회덮밥", [UIImage imageNamed:@"gola_img_34.jpg"]],
                             @"35" : @[@"장어", [UIImage imageNamed:@"gola_img_35.jpg"]],
                             @"36" : @[@"제육볶음", [UIImage imageNamed:@"gola_img_36.jpg"]],
                             @"37" : @[@"족발", [UIImage imageNamed:@"gola_img_37.jpg"]],
                             @"38" : @[@"김밥", [UIImage imageNamed:@"gola_img_38.jpg"]],
                             @"39" : @[@"김치찌개", [UIImage imageNamed:@"gola_img_39.jpg"]],
                             @"40" : @[@"깐풍기", [UIImage imageNamed:@"gola_img_40.jpg"]],
                             
                             @"41" : @[@"곱창", [UIImage imageNamed:@"gola_img_41.jpg"]],
                             @"42" : @[@"잔치국수", [UIImage imageNamed:@"gola_img_42.jpg"]],
                             @"43" : @[@"국밥", [UIImage imageNamed:@"gola_img_43.jpg"]],
                             @"44" : @[@"막국수", [UIImage imageNamed:@"gola_img_44.jpg"]],
                             @"45" : @[@"냉면", [UIImage imageNamed:@"gola_img_45.jpg"]],
                             @"46" : @[@"된장찌개", [UIImage imageNamed:@"gola_img_46.jpg"]],
                             @"47" : @[@"파스타", [UIImage imageNamed:@"gola_img_47.jpg"]],
                             @"48" : @[@"팟타이", [UIImage imageNamed:@"gola_img_48.jpg"]],
                             @"49" : @[@"피자", [UIImage imageNamed:@"gola_img_49.jpg"]],
                             @"50" : @[@"라멘", [UIImage imageNamed:@"gola_img_50.jpg"]],
                             
                             @"51" : @[@"회", [UIImage imageNamed:@"gola_img_51.jpg"]],
                             @"52" : @[@"샌드위치", [UIImage imageNamed:@"gola_img_52.jpg"]],
                             @"53" : @[@"도시락", [UIImage imageNamed:@"gola_img_53.jpg"]],
                             @"54" : @[@"쭈꾸미볶음", [UIImage imageNamed:@"gola_img_54.jpg"]],
                             @"55" : @[@"고기국수", [UIImage imageNamed:@"gola_img_55.jpg"]],
                             @"56" : @[@"비빔국수", [UIImage imageNamed:@"gola_img_56.jpg"]],
                             @"57" : @[@"설렁탕", [UIImage imageNamed:@"gola_img_57.jpg"]],
                             @"58" : @[@"샤브샤브", [UIImage imageNamed:@"gola_img_58.jpg"]],
                             @"59" : @[@"돈부리덮밥", [UIImage imageNamed:@"gola_img_59.jpg"]],
                             @"60" : @[@"연탄불고기", [UIImage imageNamed:@"gola_img_60.jpg"]],
                             
                             @"61" : @[@"브리또", [UIImage imageNamed:@"gola_img_61.jpg"]],
                             @"62" : @[@"모듬전", [UIImage imageNamed:@"gola_img_62.jpg"]],
                             @"63" : @[@"뼈찜", [UIImage imageNamed:@"gola_img_63.jpg"]],
                             @"64" : @[@"만두", [UIImage imageNamed:@"gola_img_64.jpg"]],
                             @"65" : @[@"칼국수", [UIImage imageNamed:@"gola_img_65.jpg"]],
                             @"66" : @[@"수제비", [UIImage imageNamed:@"gola_img_66.jpg"]] };
        }
    }
    
    return self;
}

// 만약 [[GlloaImageStore alloc] init] 호출시 오류를 알린다
- (instancetype)init {
    
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use + [GolaImageStore initImageStore]" userInfo:nil];
    
    return nil;
}
@end
