//
//  MeViewController.h
//  贝思客
//
//  Created by shoule on 14-6-3.
//  Copyright (c) 2014年 shoule. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>{
    UITableView *_userCenterTable;
    NSArray* _iconArr;
    NSArray* _labNameArr;
    //NSMutableDictionary *_userInfoDic;
}
@property (weak, nonatomic) IBOutlet UIImageView *portraitImageView;
@property (strong, nonatomic) IBOutlet UITableViewCell *userCenterCell;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *iconNameLab;
@property (strong, nonatomic) IBOutlet UITableViewCell *splitThinCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *splitThickCell;

@property (strong, nonatomic) IBOutlet UIView *headerView;

@property (strong, nonatomic) NSString *Password;
@property (weak, nonatomic) IBOutlet UILabel *myNickLab;
@property (weak, nonatomic) IBOutlet UILabel *myLevelLab;

@end
