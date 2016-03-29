//
//  UIColor+JWExtention.h
//  JWPopMenuDemo
//
//  Created by xiyang on 16/3/29.
//  Copyright © 2016年 evenCoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (JWExtention)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

// UIColor转UIImage
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
