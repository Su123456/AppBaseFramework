//
//  NetWorkManager.h
//  AppBaseFramework
//
//  Created by honyork on 2016/11/4.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//
//定义返回请求数据的block类型

typedef void(^SuccessBlock) (id responseObj);
typedef void(^FailBlock)    (id responseObj);


#import <Foundation/Foundation.h>
@interface NetWorkManager : NSObject

- (void)postWithURL:(NSString *)url
             params:(NSDictionary *)params
      successAction:(SuccessBlock)success
         failAction:(FailBlock)failure;


/*   上传图片  （多张或一张） */
- (void)askQuestion:(NSDictionary *)parameters
              image:(NSMutableArray *)images
          imageName:(NSString *)imageName
      successAction:(SuccessBlock)success
         failAction:(FailBlock)failure;
@end
