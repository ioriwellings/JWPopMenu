//
//  ViewController.m
//  JWPopMenuDemo
//
//  Created by xiyang on 16/3/29.
//  Copyright © 2016年 evenCoder. All rights reserved.
//

#import "ViewController.h"
#import "JWMenu.h"

#define VIEW_WIDHT [UIScreen mainScreen].bounds.size.width
#define VIEW_HEIGHT [UIScreen mainScreen].bounds.size.height

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
    
    NSArray *menuItems = @[[JWMenuItem menuItem:@"扫一扫"
                                          image:[[UIImage imageNamed:@"menu_QR"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                         target:self action:@selector(richScan:)],
                           [JWMenuItem menuItem:@"加好友"
                                         image:[[UIImage imageNamed:@"menu_addFri"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]
                                         target:self action:@selector(addFriend:)],
                           [JWMenuItem menuItem:@"创建讨论组"
                                          image:[[UIImage imageNamed:@"menu_multichat"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]
                                         target:self action:@selector(createGroup:)],
                           [JWMenuItem menuItem:@"发送到电脑"
                                          image:[[UIImage imageNamed:@"menu_sendFile"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]
                                         target:self action:@selector(sendToComputer:)],
                           [JWMenuItem menuItem:@"面对面快传"
                                          image:[[UIImage imageNamed:@"menu_facetoface"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                         target:self action:@selector(faceToFace:)],
                           [JWMenuItem menuItem:@"收钱"
                                          image:[[UIImage imageNamed:@"menu_payMoney"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                         target:self action:@selector(collectMoney:)],
                           ];
    CGRect targetFrame = self.navigationItem.rightBarButtonItem.customView.frame;
    targetFrame.origin.x = VIEW_WIDHT - 64;
    targetFrame.origin.y = targetFrame.origin.y + 5;
    [JWMenu showMenuInView:self.navigationController.view fromRect:targetFrame menuItems:menuItems viewBackgroundColor:@"F5F6F7"]; // 背景颜色:浅灰色
}

- (void)leftBarButtonClick {
    
    NSLog(@"leftBarButtonClick");
}

#pragma mark - <rightClick>
- (void)richScan:(UIButton *)sender {
    
    NSLog(@"richScan");
}

- (void)addFriend:(UIButton *)sender {
    
    NSLog(@"addFriend");
}

- (void)createGroup:(UIButton *)sender {
    
    NSLog(@"createGroup");
}

- (void)faceToFace:(UIButton *)sender {
    
    NSLog(@"faceToFace");
}

- (void)sendToComputer:(UIButton *)sender {
    
    NSLog(@"sendToComputer");
}


- (void)collectMoney:(UIButton *)sender {
    
    NSLog(@"collectMoney");
}









@end
