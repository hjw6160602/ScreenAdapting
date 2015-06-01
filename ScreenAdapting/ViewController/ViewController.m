//
//  ViewController.m
//  ScreenAdapting
//
//  Created by shoule on 15/5/29.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "ForgetPassViewController.h"
#import "MeViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.titleTextAttributes
    = @{ NSForegroundColorAttributeName: [UIColor colorWithRed:217/255.f
                                                         green:54/255.f
                                                          blue:22/255.f
                                                         alpha:1.0f],
         NSFontAttributeName : [UIFont systemFontOfSize:20.f]
         };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)PUSH {
//    LoginViewController* loginVC = [LoginViewController new];
//    [self.navigationController pushViewController:loginVC animated:YES];
//    
//    RegisterViewController* registerVC = [RegisterViewController new];
//    [self.navigationController pushViewController:registerVC animated:YES];
//    
    //ForgetPassViewController* forgetPassVC = [ForgetPassViewController new];
    //[self.navigationController pushViewController:forgetPassVC animated:YES];
    
   // NSLog(@"%@",self.navigationController.navigationBar);
    
    MeViewController* meViewController = [MeViewController new];
    [self.navigationController pushViewController:meViewController animated:YES];
}

@end
