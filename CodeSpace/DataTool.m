//
//  DataTool.m
//  CodeSpace
//
//  Created by spf on 2019/4/13.
//  Copyright © 2019 spf. All rights reserved.
//

#import "DataTool.h"

@implementation DataTool
+(NSArray<NSArray<NSDictionary *> *> *)getDefaultData{
    return @[
                @[@{
                        @"title":@"BigButton",
                        @"subTitle":@"按钮扩大点击区域",
                        @"action":@"jumpToBigButtonExpandClickRange",
                        @"class":@"BigButtonExpandClickRangeVC",
                        @"classTitle":@"ExpanBtnClickRange"
                        },
                @{
                      @"title":@"BigFormatBtn",
                      @"subTitle":@"按钮标题和图片显示位置",
                      @"action":@"jumpToBigBtnFormatShowImageTitleType",
                      @"class":@"BigBtnFormatShowImageTypeVC",
                      @"classTitle":@"BtnShowImageTitleType",
                      },
                    ]
             ];
}
@end

