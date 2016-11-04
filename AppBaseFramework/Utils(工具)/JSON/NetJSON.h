//
//  NetJSON.h
//  AppBaseFramework
//
//  Created by honyork on 2016/11/4.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetJSON : NSObject
+ (id)objectFormJsonData:(NSData *)jsondata;
+ (id)objectFormJsonString:(NSString *)json;
+ (NSString *)jsonStringWithObject:(id)object;

@end

@interface NSObject (Json)
//对象转json
- (NSString *)JSONString;

@end

@interface NSString (ObjectForJson)
//json转对象
- (id)objectFromJSONString;

@end
