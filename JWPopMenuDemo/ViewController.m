//
//  ViewController.m
//  JWPopMenuDemo
//
//  Created by xiyang on 16/3/29.
//  Copyright © 2016年 evenCoder. All rights reserved.
//

#import "ViewController.h"
#import "JWMenu.h"
#import <SVProgressHUD.h>

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
                                     titleColor:[UIColor darkGrayColor]
                                         target:self action:@selector(richScan:)],
                           [JWMenuItem menuItem:@"加好友"
                                         image:[[UIImage imageNamed:@"menu_addFri"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]
                                    titleColor:[UIColor darkGrayColor]
                                         target:self action:@selector(addFriend:)],
                           [JWMenuItem menuItem:@"创建讨论组"
                                          image:[[UIImage imageNamed:@"menu_multichat"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]
                                     titleColor:[UIColor darkGrayColor]
                                         target:self action:@selector(createGroup:)],
                           [JWMenuItem menuItem:@"发送到电脑"
                                          image:[[UIImage imageNamed:@"menu_sendFile"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]
                                     titleColor:[UIColor darkGrayColor]
                                         target:self action:@selector(sendToComputer:)],
                           [JWMenuItem menuItem:@"面对面快传"
                                          image:[[UIImage imageNamed:@"menu_facetoface"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                     titleColor:[UIColor darkGrayColor]
                                         target:self action:@selector(faceToFace:)],
                           [JWMenuItem menuItem:@"收钱"
                                          image:[[UIImage imageNamed:@"menu_payMoney"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                     titleColor:[UIColor darkGrayColor]
                                         target:self action:@selector(collectMoney:)],
                           ];
    CGRect targetFrame = self.navigationItem.rightBarButtonItem.customView.frame;
    targetFrame.origin.x = VIEW_WIDHT - 64;
    targetFrame.origin.y = targetFrame.origin.y + 5;
    [JWMenu showMenuInView:self.navigationController.view fromRect:targetFrame menuItems:menuItems viewBackgroundColor:@"DFDFDF"]; // 浅灰色
}

- (void)leftBarButtonClick {
    
    NSArray *menuItems = @[
                           
                           [JWMenuItem menuItem:@"发起聊天"
                                          image:[[UIImage imageNamed:@"chat_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                     titleColor:[UIColor whiteColor]
                                         target:self
                                         action:@selector(pushChat:)],
                           [JWMenuItem menuItem:@"添加朋友"
                                          image:[[UIImage imageNamed:@"addfriend_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                     titleColor:[UIColor whiteColor]
                                         target:self
                                         action:@selector(pushAddFriend:)],
                           [JWMenuItem menuItem:@"通讯录"
                                          image:[[UIImage imageNamed:@"contact_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                     titleColor:[UIColor whiteColor]
                                         target:self
                                         action:@selector(pushAddressBook:)],
                           [JWMenuItem menuItem:@"公众账号"
                                          image:[[UIImage imageNamed:@"public_account"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                     titleColor:[UIColor whiteColor]
                                         target:self
                                         action:@selector(pushPublicService:)],
                           [JWMenuItem menuItem:@"添加公众号"
                                          image:[[UIImage imageNamed:@"add_public_account"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                     titleColor:[UIColor whiteColor]
                                         target:self
                                         action:@selector(pushAddPublicService:)],
                           ];
    CGRect targetFrame = self.navigationItem.leftBarButtonItem.customView.frame;
    targetFrame.origin.x = 0;
    targetFrame.origin.y = targetFrame.origin.y + 5;
    [JWMenu showMenuInView:self.navigationController.view fromRect:targetFrame menuItems:menuItems viewBackgroundColor:@"6F7070"]; // 灰色
}

#pragma mark - <rightClick>
- (void)richScan:(UIButton *)sender {
    
    [self dismissPop:@"扫一扫暂时没实现"];
}

- (void)addFriend:(UIButton *)sender {
    
    [self dismissPop:@"添加好友暂时没实现"];
}

- (void)createGroup:(UIButton *)sender {
    
    [self dismissPop:@"创建讨论组暂时没实现"];
}

- (void)faceToFace:(UIButton *)sender {
    
    [self dismissPop:@"面对面传暂时没实现"];
}

- (void)sendToComputer:(UIButton *)sender {
    
    [self dismissPop:@"发送到电脑暂时没实现"];
}

- (void)collectMoney:(UIButton *)sender {
    
    [self dismissPop:@"收钱暂时没实现"];
}

#pragma mark - <leftClick>
- (void)pushChat:(UIButton *)sender {
    
    [self dismissPop:@"发起聊天暂时没实现"];
}

- (void)pushAddFriend:(UIButton *)sender {
    
    [self dismissPop:@"添加好友暂时没实现"];
}

- (void)pushAddressBook:(UIButton *)sender {
    
    [self dismissPop:@"通讯录暂时没实现"];
}

- (void)pushPublicService:(UIButton *)sender {
    
    [self dismissPop:@"公众账号暂时没实现"];
}

- (void)pushAddPublicService:(UIButton *)sender {
    
    [self dismissPop:@"添加公众号暂时没实现"];
}

- (void)dismissPop:(NSString *)message {
    
    [SVProgressHUD showInfoWithStatus:message maskType:SVProgressHUDMaskTypeBlack];
    [UIView animateWithDuration:2.5 animations:^{
        [SVProgressHUD dismiss];
    }];
}







@end
