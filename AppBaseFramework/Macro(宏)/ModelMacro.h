//
//  ModelMacro.h
//  AppBaseFramework
//
//  Created by honyork on 2016/11/4.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//

#ifndef ModelMacro_h
#define ModelMacro_h


#if 0   //0内网 1外网

#define BASE_URL  @"http://"//外部服务器主接口
#define DEFAULT_PHONE    @""
#define DEFAULT_PASSWORD @""

#else

#define BASE_URL  @"http://"      //内部使用主接口
#define DEFAULT_PHONE    @""
#define DEFAULT_PASSWORD @""

#endif




#endif /* ModelMacro_h */
