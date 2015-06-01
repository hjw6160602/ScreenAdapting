//
//  MeViewController.h
//  贝思客
//
//  Created by shoule on 14-6-3.
//  Copyright (c) 2014年 shoule. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeViewController : UIViewController{
    NSArray* _iconArr;
    NSArray* _labNameArr;
}

@property (weak, nonatomic) IBOutlet UITableView *userCenterTable;

@property (weak, nonatomic) IBOutlet UIImageView *portraitImageView;
@property (strong, nonatomic) IBOutlet UIView *HeaderView;
@property (strong, nonatomic) IBOutlet UITableViewCell *SectionView;

@end
