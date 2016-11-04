//
//  MGTabBarController.m
//  TabbarAddNav
//
//  Created by honyork on 16/9/6.
//  Copyright © 2016年 LaYaMicro. All rights reserved.
//

#import "MGTabBarController.h"

@implementation MGTabBarController

+ (void)initialize{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:0];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
          
    NSMutableDictionary *selectedAtts = [NSMutableDictionary dictionary];
    selectedAtts[NSFontAttributeName] = [UIFont systemFontOfSize:0];
    selectedAtts[NSForegroundColorAttributeName] = MAINCOLOR;
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAtts forState:UIControlStateSelected];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加子控制器
    /*
    [self setupChildVc:[[QuestionViewController alloc]init] title:@"知识库" image:@"tab_knowledge_normal" selectedImage:@"tab_knowledge_selected"];
    [self setupChildVc:[[MeasureViewController alloc]init] title:@"测量" image:@"tab_measure_normal" selectedImage:@"tab_measure_selected"];
    [self setupChildVc:[[FamilyViewController alloc]init] title:@"家庭成员" image:@"tab_family_normal" selectedImage:@"tab_family_selected"];
    [self setupChildVc:[[ManagerViewController alloc]init] title:@"管理" image:@"tab_manager_normal" selectedImage:@"tab_manager_selected"];
     */
    self.selectedIndex = 1;
}

- (void)setupChildVc:(UIViewController *)vc
               title:(NSString *)title
               image:(NSString *)image
       selectedImage:(NSString *)selectedImage{
    //设置文字和图片
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    MGNavigationController *navVc = [[MGNavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:navVc];
}

@end
