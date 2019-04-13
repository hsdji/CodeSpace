//
//  BigButtonExpandClickRangeVCViewController.m
//  CodeSpace
//
//  Created by spf on 2019/4/13.
//  Copyright © 2019 spf. All rights reserved.
//

#import "BigButtonExpandClickRangeVC.h"
#import "PFButton/PFButton.h"

@interface BigButtonExpandClickRangeVC ()

@end

@implementation BigButtonExpandClickRangeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    BigButton *btn = [[BigButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    BigButtonExpandValue expand;
    expand.topExpandValue = -20;
    expand.leftExpandValue = 10;
    expand.bottomExpandValue = 10;
    expand.rightExpandValue = 10;
    [btn setExpand:expand];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(testClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor yellowColor];
    view.frame= btn.validClickRegion;
    [self.view addSubview:view];
    [self.view bringSubviewToFront:btn];
}


-(void)testClick:(BigButton *)btn{
    NSLog(@"点击了");
}



@end
