//
//  MGNavigationController.m
//  TabbarAddNav
//
//  Created by honyork on 16/9/6.
//  Copyright © 2016年 LaYaMicro. All rights reserved.
//

#import "MGNavigationController.h"

@implementation MGNavigationController

- (void)viewDidLoad{
    [super viewDidLoad];
}

+ (void)initialize{
    //设置导航栏主题
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    navBar.barTintColor = MAINCOLOR;
    [navBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:0],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //UINavigation BarButtonItem设为白色
    [navBar setTintColor:[UIColor whiteColor]];
    //设置导航条颜色和界面颜色相同
    [navBar setBackgroundImage:[[UIImage alloc] init] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    //隐藏导航条Bar的黑线
    [navBar setShadowImage:[[UIImage alloc] init]];
    //忽略UINavigationBar
    navBar.translucent = NO;
}

- (void)pushViewController:(UIViewController *)viewController
                  animated:(BOOL)animated{
    //如果push进来的不是第一个控制器
    if (self.childViewControllers.count>0) {
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [backButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        backButton.size = CGSizeMake(30, 20);
        // 让按钮的内容往左边偏移10
        backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        // 让按钮内部的所有内容左对齐
        backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    //这句super的push要放在后面，让viewController可以覆盖上面设置leftBarButtonItem
    [super pushViewController:viewController animated:YES];
}

/**
 *  返回按钮
 */
- (void)back{
    [self popViewControllerAnimated:YES];
}

@end
