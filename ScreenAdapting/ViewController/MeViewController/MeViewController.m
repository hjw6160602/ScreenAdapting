//
//  MeViewController.m
//  贝思客
//
//  Created by shoule on 14-6-3.
//  Copyright (c) 2014年 shoule. All rights reserved.
//

#import "MeViewController.h"
#import "config.h"

@implementation MeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        self.title=@"个人中心";
    }
    return self;
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.hidesBottomBarWhenPushed = NO;

    self.portraitImageView.layer.cornerRadius = self.portraitImageView.bounds.size.height/2;
    self.portraitImageView.layer.masksToBounds = YES;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.portraitImageView.contentMode = UIViewContentModeScaleAspectFit;


    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = NO;

    [self initNavi];
    [self initData];
    [self initTable];
}


-(void)initNavi{
    UIButton* btnCustom = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCustom.frame = CGRectMake(Screen_width-12.5-20, 34, 20, 20) ;
    
    [btnCustom setImage:[UIImage imageNamed:@"icon-title-option"] forState:UIControlStateNormal] ;
    UIBarButtonItem* myBtn = [[UIBarButtonItem alloc] initWithCustomView:btnCustom] ;
    self.navigationItem.rightBarButtonItem = myBtn;
    
    UIButton* btnCustom2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCustom2.frame = CGRectMake(12.5, 30, 54, 25) ;
    [btnCustom2 setImage:[UIImage imageNamed:@"logo"] forState:UIControlStateNormal] ;
//    [topView addSubview:btnCustom2];
    UIBarButtonItem* myBtn2 = [[UIBarButtonItem alloc] initWithCustomView:btnCustom2] ;
    self.navigationItem.leftBarButtonItem = myBtn2;
}


- (void)initData{
    _iconArr = [NSArray arrayWithObjects:@"icon-user-order",@"",@"icon-user-cart",@"",@"icon-user-addr",@"",@"icon-user-coupon",@"",@"icon-user-exchange",@"",@"icon-user-coin",@"",@"icon-user-about",@"",@"icon-user-quit",@"", nil];
    _labNameArr = [NSArray arrayWithObjects:@"我的订单",@"",@"我的购物车",@"",@"我的地址簿",@"",@"我的优惠券",@"",@"我的兑换券",@"",@"我的极致币",@"",@"关于贝思客",@"",@"退出登录",@"", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)initTable
{
//    _userCenterTable=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, Screen_width, Screen_height)];
    if (isIOS7) {
        _userCenterTable=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, Screen_width, Screen_height-64-44)];
    }else{
        _userCenterTable=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, Screen_width, Screen_height-44-44)];
        
    }

    _userCenterTable.delegate=self;
    _userCenterTable.dataSource=self;
    _userCenterTable.showsVerticalScrollIndicator=NO;
    _userCenterTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    _userCenterTable.tableHeaderView = _headerView;
    
    _headerView.userInteractionEnabled = YES;
    [self.view addSubview:_userCenterTable];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row%2 == 0) {
        return 45;
    }else if (indexPath.row == 5||indexPath.row == 11||indexPath.row == 17){
        return 5;
    }else{
        return 1;
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _labNameArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if (indexPath.row%2 == 0) {
        static NSString *ident=@"mainCell";
        cell = [tableView dequeueReusableCellWithIdentifier:ident];
        if (cell == nil) {
            cell =[[[NSBundle mainBundle]loadNibNamed:@"userCenterCell" owner:self options:nil]lastObject];
        }
    }else if (indexPath.row == 5||indexPath.row == 11||indexPath.row == 15){
        static NSString *splitThickIdent = @"splitThickCell";
        cell = [tableView dequeueReusableCellWithIdentifier:splitThickIdent];
        if (cell == nil) {
            cell =[[[NSBundle mainBundle]loadNibNamed:@"SplitThickCell" owner:self options:nil]lastObject];
        }
    }else{
        static NSString *splitThinIdent = @"splitThinCell";
        cell = [tableView dequeueReusableCellWithIdentifier:splitThinIdent];
        if (cell == nil) {
            cell =[[[NSBundle mainBundle]loadNibNamed:@"SplitThinCell" owner:self options:nil]lastObject];
        }
    }
    
    UIImageView* iconView = (UIImageView*)[cell viewWithTag:101];
    iconView.image = [UIImage imageNamed:_iconArr[indexPath.row]];
    UILabel* iconNameLab = (UILabel*)[cell viewWithTag:102];
    iconNameLab.text = _labNameArr[indexPath.row];
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
