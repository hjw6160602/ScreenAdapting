//
//  RegisterViewController.h
//  BestCake3.0
//
//  Created by 123 on 15-4-20.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController <UITableViewDataSource, UITableViewDelegate,UITextFieldDelegate>
{
    UITableView *_registerTable;
    NSInteger _secondsCountDown;
    NSTimer *_countDownTimer;
}
@property (strong, nonatomic) IBOutlet UITableViewCell *registerCell;


@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
@property (weak, nonatomic) IBOutlet UITextField *password1Text;
@property (weak, nonatomic) IBOutlet UITextField *codeText;

@property (weak, nonatomic) IBOutlet UIButton *codeButton;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;

@end
