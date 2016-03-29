//
//  UIImage+JWExtention.h
//  JWPopMenuDemo
//
//  Created by xiyang on 16/3/29.
//  Copyright © 2016年 evenCoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JWExtention)

/**
 *  修改图片size
 *
 *  @param image      原图片
 *  @param targetSize 要修改的size
 *
 *  @return 修改后的图片
 */
+ (UIImage *)image:(UIImage *)image byScalingToSize:(CGSize)targetSize;

@end
