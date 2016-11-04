//
//  NetWorkManager.m
//  AppBaseFramework
//
//  Created by honyork on 2016/11/4.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//

#import "NetWorkManager.h"

@implementation NetWorkManager

/* 普通post请求  */
- (void)postWithURL:(NSString *)url
             params:(NSDictionary *)params
      successAction:(SuccessBlock)success
         failAction:(FailBlock)failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", @"text/plain", nil];
    
    NSString *postUrl = [NSString stringWithFormat:@"%@%@",BASE_URL,url];
    
    [manager POST:postUrl parameters:params
          success:^(AFHTTPRequestOperation *operation, id responseObject) {
              if (success) {
                  success(responseObject);
              }
          }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
              if (failure) {
                  failure(error);
              }
          }
     ];
}


/*   上传图片  （多张或一张） */

- (void)askQuestion:(NSDictionary *)parameters
              image:(NSMutableArray *)images
          imageName:(NSString *)imageName
      successAction:(SuccessBlock)success
         failAction:(FailBlock)failure
{
    AFHTTPRequestOperation *op = [[AFHTTPRequestOperationManager manager] POST:[NSString stringWithFormat:@"接口地址(替换)"]  parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        // 上传 多张图片
        for(NSInteger i = 0; i < images.count; i++)
        {
            NSData *imageData = UIImageJPEGRepresentation(images[i], 0.05);
            // 上传的参数名
            NSString * Name  = [NSString stringWithFormat:@"%@%ld", imageName, i];
            [formData appendPartWithFileData:imageData name:@"file" fileName:[NSString stringWithFormat:@"%@.jpg",Name]  mimeType:@"image/jpeg"];
        }
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            NSString *result    = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            NSString *objResult = [result objectFromJSONString];
            success(objResult);
        }
    }failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        DLog(@"错误:%@",operation);
    }];
    [op start];
}


@end
