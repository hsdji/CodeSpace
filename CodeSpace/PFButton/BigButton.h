//
//  BigButton.h
//  CodeSpace
//
//  Created by spf on 2019/4/11.
//  Copyright © 2019 spf. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 Expand button Click range value
 *topExpandValue      Expand button up     click range
 *leftExpandValue     Expand button Left   click range
 *bottomExpandValue   Expand button Bottom click range
 *rightExpandValue    Expand Button Bottom click range
 */
struct BigButtonExpandValue {
    CGFloat topExpandValue;
    CGFloat leftExpandValue;
    CGFloat bottomExpandValue;
    CGFloat rightExpandValue;
};

typedef struct BigButtonExpandValue BigButtonExpandValue;


@interface BigButton : UIButton


/**
 设置点击区域 默认为系统预设区域
 */
@property (nonatomic,assign)BigButtonExpandValue expand;


/**
 有效的点击区域
 */
@property (nonatomic,assign)CGRect validClickRegion;

@end


