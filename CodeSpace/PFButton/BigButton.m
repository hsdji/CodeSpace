//
//  BigButton.m
//  CodeSpace
//
//  Created by spf on 2019/4/11.
//  Copyright © 2019 spf. All rights reserved.
//

#import "BigButton.h"

/**
 CGFloat topExpandValue;
 CGFloat leftExpandValue;
 CGFloat bottomExpandValue;
 CGFloat rightExpandValue;
 
 */


@implementation BigButton

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event
{
    CGRect bounds = self.bounds;
    CGRect rect = CGRectMake(bounds.origin.x-self.expand.leftExpandValue, bounds.origin.x-self.expand.topExpandValue, bounds.size.width+(self.expand.leftExpandValue+self.expand.rightExpandValue), bounds.size.height+self.expand.topExpandValue+self.expand.bottomExpandValue);
    return CGRectContainsPoint(rect, point);
}

-(CGRect)validClickRegion{
    CGRect bounds = self.frame;
    return  CGRectMake(bounds.origin.x-self.expand.leftExpandValue, bounds.origin.x-self.expand.topExpandValue, bounds.size.width+(self.expand.leftExpandValue+self.expand.rightExpandValue), bounds.size.height+self.expand.topExpandValue+self.expand.bottomExpandValue);
}


@end
