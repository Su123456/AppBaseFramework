//
//  LoginVC.m
//  AppBaseFramework
//
//  Created by honyork on 2016/11/4.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC ()

@property (nonatomic, strong) UITextField *userText;
@property (nonatomic, strong) UITextField *password;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initView];
}

- (void)initView{
    self.userText = [self createTextplaceholder:@"请输入用户名" secureTextEntry:NO];
    self.password = [self createTextplaceholder:@"请输入密码" secureTextEntry:YES];
    
    
    [_userText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_bottom).with.offset(100);
        make.left.equalTo(self.view.mas_left).with.offset(70);
        make.width.equalTo(@200);
        make.height.equalTo(@30);
    }];
    
    [_password mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_userText.mas_bottom).with.offset(10);
        make.left.equalTo(self.view.mas_left).with.offset(70);
        make.width.equalTo(@200);
        make.height.equalTo(@30);
    }];
    
    
    
    
}


- (UITextField *)createTextplaceholder:(NSString *)placeholder
                 secureTextEntry:(BOOL)secureTextEntry
{
    UITextField *textField = [UITextField new];
    textField.placeholder = placeholder;
    textField.backgroundColor = [UIColor clearColor];
    textField.font = [UIFont systemFontOfSize:15.0];
    textField.secureTextEntry = secureTextEntry;
    textField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:textField];
    return textField;
}


@end
