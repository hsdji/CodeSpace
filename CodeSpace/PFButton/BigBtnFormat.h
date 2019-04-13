//
//  BigFormatBtn.h
//  CodeSpace
//
//  Created by spf on 2019/4/13.
//  Copyright © 2019 spf. All rights reserved.
//

#import "BigButton.h"

typedef enum : NSUInteger {
    BigBtnFormatShowImageTypeTop,   //show btn Image on top , title under the image
    BigBtnFormatShowImageTypeLeft,  //show btn Image on left etc...
    BigBtnFormatShowImageTypeBottom,//show btn Image on bottom etc...
    BigBtnFormatShowImageTypeRight,//show btn Image on right etc...
} BigBtnFormatShowImageType;


typedef NS_ENUM(NSUInteger, BigFormatBtnCornerType) {
    BigFormatBtnCornerTypeTopLeft = 0,          //show corner Top && Left
    BigFormatBtnCornerTypeBottomLeft  = 1 << 0, //show corner Bottom  && Left
    BigFormatBtnCornerTypeTopRight    = 1 << 1, //show corner Top && Right
    BigFormatBtnCornerTypeBottomRight = 1 << 2, //show corner Bottom && Right
};


struct BigFormatBtnCornerRadius {
    CGFloat     cornerTopLeftValue;  //The Value of  Top && Left for btn corner etc......
    CGFloat    cornerBottomLeftValue;   //The Value of  Bottom && Left for btn corner etc......
    CGFloat     cornerTopRight; //The Value of  Top && Right for btn corner etc......
    CGFloat     cornerBottomRight;  //The Value of  Bottom && Right for btn corner etc......
};


@interface BigBtnFormat : BigButton

/** 图片标题显示位置*/
@property (nonatomic,assign)BigBtnFormatShowImageType showBtnType;

/** 按钮圆角位置*/
@property (nonatomic,assign)BigFormatBtnCornerType showCornerType;

/** 按钮圆角大小 默认0*/
@property (nonatomic,assign)  struct BigFormatBtnCornerRadius corners;

@end


