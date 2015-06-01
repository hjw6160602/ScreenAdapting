//
//  FansViewController.m
//  BestCake3.0
//
//  Created by 123 on 15-4-16.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import "FansViewController.h"
#import "FansCell.h"
#import "config.h"

@implementation FansViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self audio];
    [self createNav];
    [self createTableView];
}

-(void)createTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, Screen_width, Screen_height-64-44-5) style:UITableViewStylePlain];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    [self.view addSubview:_tableView];
    self.SpeechView.frame=CGRectMake(0, Screen_height, Screen_width, Screen_height);
    [self.view addSubview:self.SpeechView];
}

- (void)audio
{
    //录音设置
    NSMutableDictionary *recordSetting = [[NSMutableDictionary alloc]init];
    //设置录音格式  AVFormatIDKey==kAudioFormatLinearPCM
    [recordSetting setValue:[NSNumber numberWithInt:kAudioFormatMPEG4AAC] forKey:AVFormatIDKey];
    //设置录音采样率(Hz) 如：AVSampleRateKey==8000/44100/96000（影响音频的质量）
    [recordSetting setValue:[NSNumber numberWithFloat:44100] forKey:AVSampleRateKey];
    //录音通道数  1 或 2
    [recordSetting setValue:[NSNumber numberWithInt:1] forKey:AVNumberOfChannelsKey];
    //线性采样位数  8、16、24、32
    [recordSetting setValue:[NSNumber numberWithInt:16] forKey:AVLinearPCMBitDepthKey];
    //录音的质量
    [recordSetting setValue:[NSNumber numberWithInt:AVAudioQualityHigh] forKey:AVEncoderAudioQualityKey];
    
    NSString *strUrl = [NSString stringWithFormat:@"%@/Documents/lll.aac", NSHomeDirectory()];
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@", strUrl]];
    
    urlPlay = url;
    
    NSError *error;
    //初始化
    recorder = [[AVAudioRecorder alloc]initWithURL:url settings:recordSetting error:&error];
    //开启音量检测
    recorder.meteringEnabled = YES;
    recorder.delegate = self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return Screen_height-64-44-5;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //UITableViewCell*cell = self.FansMainCell;
    static NSString *indentifier = @"FansCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (cell == nil) {
        cell =[[[NSBundle mainBundle]loadNibNamed:@"FansCell" owner:self options:nil]lastObject];
    }
    return cell;
}

-(void)createNav{
    UIButton* btnCustom = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCustom.frame = CGRectMake(Screen_width-12.5-20, 34, 20, 20) ;
    
    [btnCustom setImage:[UIImage imageNamed:@"icon-user-cart"] forState:UIControlStateNormal] ;
    UIBarButtonItem* myBtn = [[UIBarButtonItem alloc] initWithCustomView:btnCustom] ;
    self.navigationItem.rightBarButtonItem = myBtn;
   
    
    UIButton* btnCustom2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCustom2.frame = CGRectMake(12.5, 30, 54, 25) ;
    [btnCustom2 setImage:[UIImage imageNamed:@"logo"] forState:UIControlStateNormal] ;
    UIBarButtonItem* myBtn2 = [[UIBarButtonItem alloc] initWithCustomView:btnCustom2] ;
    
    
    UIButton* btnCustom3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCustom3.frame = CGRectMake(70, 20, 40, 21) ;
    [btnCustom3 setTitle:@"上海" forState:UIControlStateNormal];
    [btnCustom3 setTitleColor:[UIColor colorWithRed:212/255.0 green:50/255.0 blue:30/255.0 alpha:1] forState:UIControlStateNormal];
    UIBarButtonItem* myBtn3 = [[UIBarButtonItem alloc] initWithCustomView:btnCustom3] ;
    
    
    UIButton* btnCustom4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCustom4.frame = CGRectMake(100, 21, 15, 9) ;
    [btnCustom4 setImage:[UIImage imageNamed:@"ico-address-arrowD.png"] forState:UIControlStateNormal] ;
    UIBarButtonItem* myBtn4 = [[UIBarButtonItem alloc] initWithCustomView:btnCustom4];
    NSArray* array=@[myBtn2,myBtn3,myBtn4];
    self.navigationItem.leftBarButtonItems = array;
}


@end
