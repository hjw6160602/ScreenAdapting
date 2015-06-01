//
//  FansViewController.h
//  BestCake3.0
//
//  Created by 123 on 15-4-16.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface FansViewController:UIViewController<UITableViewDataSource,UITableViewDelegate,AVAudioRecorderDelegate,UIAlertViewDelegate>
{
    UITableView*_tableView;
    AVAudioRecorder *recorder;
    NSTimer *timer;
    NSURL *urlPlay;
    NSString *_strUrl;
    NSData* _soundData;
}

@property (strong, nonatomic) IBOutlet UITableViewCell *FansMainCell;
@property (strong, nonatomic) IBOutlet UIView *SpeechView;
@property (strong, nonatomic) AVAudioPlayer *avPlay;

@end
