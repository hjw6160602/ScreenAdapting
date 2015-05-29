//
//  LoginViewController.h
//  BestCake3.0
//
//  Created by 123 on 15-4-20.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>{
    NSUserDefaults *_UserInfo;
}

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *loginBtn;
@property (weak, nonatomic) IBOutlet UITableView *loginTable;
@property (strong, nonatomic) IBOutlet UITableViewCell *loginCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *loginPlusCell;

@end
