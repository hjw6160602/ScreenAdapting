//
//  RegisterViewController.m
//  BestCake3.0
//
//  Created by 123 on 15-4-20.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import "RegisterViewController.h"
#import "Utils.h"
#import "config.h"

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"会员注册";
    [self initNavi];
    [self.codeButton setBackgroundImage:[Utils up:25 down:25 left:25 right:25 imageName:@"btn_red_default"] forState:UIControlStateNormal];
    [self.registerBtn setBackgroundImage:[Utils up:25 down:25 left:25 right:25 imageName:@"btn_red_default"] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)initNavi{
    UIButton* customBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    customBtn.frame = CGRectMake(12.5, 34, 20, 20);
    [customBtn setImage:[UIImage imageNamed:@"icon-title-return"] forState:UIControlStateNormal];
    UIBarButtonItem* buttonItem1 = [[UIBarButtonItem alloc] initWithCustomView:customBtn];
    self.navigationItem.leftBarButtonItem = buttonItem1;
    [customBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
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
    static NSString *ident=@"mainCell";
    cell = [tableView dequeueReusableCellWithIdentifier:ident];
    if (cell == nil) {
        cell = _registerCell;
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

- (void)goBack{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
