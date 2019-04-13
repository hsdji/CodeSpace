//
//  BigFormatBtn.m
//  CodeSpace
//
//  Created by spf on 2019/4/13.
//  Copyright © 2019 spf. All rights reserved.
//

#import "BigBtnFormat.h"

@implementation BigBtnFormat

-(void)setShowBtnType:(BigBtnFormatShowImageType)showBtnType{
    _showBtnType = showBtnType;
    switch (showBtnType) {
        case BigBtnFormatShowImageTypeTop:
            [self setImageTop];
            break;
        case BigBtnFormatShowImageTypeLeft:
            [self setImageTypeLeft];
            break;
        case BigBtnFormatShowImageTypeBottom:
            [self setImageTypeBottom];
            break;
        case BigBtnFormatShowImageTypeRight:
            [self setImageTypeRight];
        default:
            break;
    }
}

- (void)setImageTop{
    
}

- (void)setImageTypeLeft{
    
}



-(void)setImageTypeBottom{
    
}

-(void)setImageTypeRight{
    
}
@end
