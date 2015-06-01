//
//  config.h
//  ScreenAdapting
//
//  Created by shoule on 15/5/29.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#ifndef ScreenAdapting_config_h
#define ScreenAdapting_config_h

#define Screen_width self.view.frame.size.width
#define Screen_height self.view.frame.size.height

#define isIOS7 [[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0

#endif
