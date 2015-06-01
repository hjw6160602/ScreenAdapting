//
//  ForgetPassViewController.h
//  BestCake3.0
//
//  Created by shoule on 15/4/30.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForgetPassViewController : UIViewController <UITextFieldDelegate>

@property(weak,nonatomic) IBOutlet UITableViewCell *forgetPassCell;

@property (weak, nonatomic) IBOutlet UIButton *commitButton;
@property (weak, nonatomic) IBOutlet UITextField *dealTextFiled;            //验证码
@property (weak, nonatomic) IBOutlet UIButton *getDealNumberButton;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;           //电话号码
@property (weak, nonatomic) IBOutlet UITextField *firstPassWordTextField;   //新密码

@property (weak, nonatomic) IBOutlet UITextField *secondPassTextField;      //重复密码
@end
