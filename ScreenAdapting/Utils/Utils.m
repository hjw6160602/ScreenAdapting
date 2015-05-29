//
//  Utils.m
//  BestCake3.0
//
//  Created by 123 on 15-4-17.
//  Copyright (c) 2015年 shoule. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+(UIImage *)up:(CGFloat)u down:(CGFloat)d left:(CGFloat)l right:(CGFloat)r imageName:(NSString *)imageName{
    UIImage* resizableImage = [[UIImage imageNamed:imageName]
                               resizableImageWithCapInsets:UIEdgeInsetsMake(10.0f, 10.0f, 10.0f, 10.0f) // 上，下，左，右 留边尺寸
                               ];
    
    return resizableImage;
    
}

@end
