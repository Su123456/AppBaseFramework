//
//  AppMacro.h
//  AppBaseFramework
//
//  Created by honyork on 2016/11/4.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//

#ifndef AppMacro_h
#define AppMacro_h


//----------------  MainScreen  ----------------

#define ZERO                      0
#define NAVIGATIONBAR_HEIGHT      44
#define NO_NAVIGATIONBAR_HEIGHT   64
#define SCREEN_WIDTH              ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT             ([UIScreen mainScreen].bounds.size.height)
#define CONTAINERVIEW_HEIGHT      SCREEN_HEIGHT - NO_NAVIGATIONBAR_HEIGHT - 49

//----------------  Colors  ----------------

#define MAINCOLOR \
[UIColor colorWithRed:48/255.0 green:126/255.0 blue:192/255.0 alpha:1.000]
#define COLORRGBA(R, G, B, A) \
[UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A/1.0]
#define COLORRGB(R, G, B) \
[UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]
#define COLOR16RGB(RGBValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define kUIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


//----------------  AppDelegate  ----------------

#define APPDELEGATE \
[(AppDelegate *)[[UIApplication sharedApplication] delegate] window]
#define PUSH(ViewController) \
[self.navigationController pushViewController:[[ViewController alloc]init] animated:YES];


//----------------  屏幕适配  ----------------

#define IPHONE4s_SCREEN                CGSizeMake(320, 480)
#define IPHONE5_SCREEN                 CGSizeMake(320, 568)
#define IPHONE6_SCREEN                 CGSizeMake(375, 667)
#define IPHONE6p_SCREEN                CGSizeMake(414, 736)


//----------------  debug  ----------------

#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif

#endif /* AppMacro_h */
