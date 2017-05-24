//
//  GolaItem.m
//  Gola
//
//  Created by 최영준 on 2016. 7. 15..
//  Copyright © 2016년 Gola. All rights reserved.
//

#import "GolaItem.h"
#import "GolaImageStore.h"

@implementation GolaItem

#pragma mark
#pragma mark - 초기화 메소드

+ (instancetype)randomItem {
    
    GolaImageStore *golaImageStore = [GolaImageStore initImageStore];

    // 67 : 0부터 66까지의 난수를 만든다
    int number = arc4random_uniform(67);
    // 키 값에 대입하기 위해 난수를 문자열로 변환
    NSString *str = [NSString stringWithFormat:@"%d", number];
    // imageStore을 불러온다
    NSArray *itemDic = [golaImageStore.imageStore objectForKey:str];
    NSString *name = itemDic[0];
    UIImage *image = itemDic[1];
    
    // 지정 초기화 메소드 호출
    GolaItem *newItem = [[self alloc] initWithItemName:name itemNumber:number itemImage:image];
    
    return newItem;
}

// 지정 초기화 메소드
- (instancetype)initWithItemName:(NSString *)name itemNumber:(int)number itemImage:(UIImage *)image {
    
    self = [super init];
    
    if (self) {
        // 인스턴스 변수에 초기값을 대입한다
        _itemName = name;
        _itemNumber = number;
        _itemImage = image;
        //NSLog(@"item init completion, %@, %d, %@", _itemName, _itemNumber, _itemImage);
        
    }
    
    return self;
}

- (instancetype)resetItem {
 
    GolaImageStore *golaImageStore = [GolaImageStore initImageStore];
    
    // 0부터 53까지의 난수를 만든다
    int number = arc4random_uniform(54);
    // 키 값에 대입하기 위해 난수를 문자열로 변환
    NSString *str = [NSString stringWithFormat:@"%d", number];
    // imageStore을 불러온다
    NSArray *itemDic = [golaImageStore.imageStore objectForKey:str];
    NSString *name = itemDic[0];
    UIImage *image = itemDic[1];
    
    // 지정 초기화 메소드 호출
    GolaItem *newItem = [self initWithItemName:name itemNumber:number itemImage:image];
    
    return newItem;
}

@end
