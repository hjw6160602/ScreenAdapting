//
//  ViewControIIer.m
//  ScreenAdapting
//
//  Created by shoule on 15/6/1.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "ViewControIIer.h"
#import "MeViewController.h"

@implementation ViewControIIer

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)PUSH {
    MeViewController* meViewController = [MeViewController new];
    [self.navigationController pushViewController:meViewController animated:YES];
}

@end
