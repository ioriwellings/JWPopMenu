//
//  ViewController.m
//  JWPopMenuDemo
//
//  Created by xiyang on 16/3/29.
//  Copyright © 2016年 evenCoder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIButton *rightButton;

@property (strong, nonatomic) UIButton *leftButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupRightBarButton];
    
    [self setupLeftBarButton];
}


- (void)setupRightBarButton {
    
    UIButton *rightBarButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 70, 45)];
    self.rightButton = rightBarButton;
    rightBarButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -50);
    [rightBarButton setImage:[UIImage imageNamed:@"barbuttonicon_add"] forState:UIControlStateNormal];
    [rightBarButton addTarget:self action:@selector(rightBarButtonClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc] initWithCustomView:rightBarButton];
    self.navigationItem.rightBarButtonItem = rightBar;
}

- (void)setupLeftBarButton {
    
    UIButton *leftBarButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 70, 45)];
    self.leftButton = leftBarButton;
    leftBarButton.imageEdgeInsets = UIEdgeInsetsMake(0, -50, 0, 0); 
    [leftBarButton setImage:[UIImage imageNamed:@"barbuttonicon_add"] forState:UIControlStateNormal];
    [leftBarButton addTarget:self action:@selector(leftBarButtonClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBar = [[UIBarButtonItem alloc] initWithCustomView:leftBarButton];
    self.navigationItem.leftBarButtonItem = leftBar;
}

- (void)rightBarButtonClick {
    
    NSLog(@"rightBarButtonClick");
}

- (void)leftBarButtonClick {
    
    NSLog(@"leftBarButtonClick");
}

@end
