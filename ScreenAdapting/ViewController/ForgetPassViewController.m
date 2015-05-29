//
//  ForgetPassViewController.m
//  BestCake3.0
//
//  Created by shoule on 15/4/30.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import "ForgetPassViewController.h"
#import "config.h"
#import "Utils.h"

@implementation ForgetPassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"忘记密码";
    [self createNav];
    [self.getDealNumberButton setBackgroundImage:[Utils up:25 down:25 left:25 right:25 imageName:@"btn_red_default"] forState:UIControlStateNormal];
    [self.commitButton setBackgroundImage:[Utils up:25 down:25 left:25 right:25 imageName:@"btn_red_default"] forState:UIControlStateNormal];

    [self textFielddelegate];
}

-(void)createNav{
    UIButton* customBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    customBtn.frame = CGRectMake(12.5, 34, 20, 20);
    [customBtn setImage:[UIImage imageNamed:@"icon-title-return"] forState:UIControlStateNormal];
    UIBarButtonItem* buttonItem1 = [[UIBarButtonItem alloc] initWithCustomView:customBtn];
    self.navigationItem.leftBarButtonItem = buttonItem1;
    [customBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark -- textFielddelegate
- (void)textFielddelegate{
    _phoneTextField.delegate = self;
    _firstPassWordTextField.delegate = self;
    _secondPassTextField.delegate = self;
    _dealTextFiled.delegate = self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (Screen_width == 320) return 568;
    else return Screen_height;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    static NSString *ident=@"ForgetPass Cell";
    cell = [tableView dequeueReusableCellWithIdentifier:ident];
    if (cell == nil) {
        cell = _forgetPassCell;
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField;{
    return [textField resignFirstResponder];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_phoneTextField resignFirstResponder];
    [_firstPassWordTextField resignFirstResponder];
    [_secondPassTextField resignFirstResponder];
    [_dealTextFiled resignFirstResponder];
}

- (void)goBack{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
