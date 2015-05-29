//
//  LoginViewController.m
//  BestCake3.0
//
//  Created by 123 on 15-4-20.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import "LoginViewController.h"
#import "config.h"
#import "Utils.h"

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"会员登录";
    [self initNavi];
    for (UIButton *btn in _loginBtn)
        [btn setBackgroundImage:[Utils up:25 down:25 left:25 right:25 imageName:@"btn_red_default"] forState:UIControlStateNormal];
}

-(void)initNavi{
    UIButton* customBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    customBtn.frame = CGRectMake(12.5, 34, 20, 20);
    [customBtn setImage:[UIImage imageNamed:@"icon-title-return"] forState:UIControlStateNormal];
    UIBarButtonItem* buttonItem1 = [[UIBarButtonItem alloc] initWithCustomView:customBtn];
    self.navigationItem.leftBarButtonItem = buttonItem1;
    [customBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(Screen_width - 60, 27, 40, 30);
    [rightButton setTitleColor:[UIColor colorWithRed:217/255.f green:54/255.f blue:22/255.f alpha:1.0f] forState:UIControlStateNormal];
    [rightButton setTitle:@"注册" forState:UIControlStateNormal];
    UIBarButtonItem* buttonItem2 = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = buttonItem2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    if (Screen_width==375 || Screen_width==414) {
        static NSString *identifier=@"Plus Cell";
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (cell == nil) {
            cell = _loginPlusCell;
        }
    }
    else{
        static NSString *identifier=@"Main Cell";
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (cell == nil) {
            cell = _loginCell;
        }
    }
   return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return Screen_height;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

- (void)goBack{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
