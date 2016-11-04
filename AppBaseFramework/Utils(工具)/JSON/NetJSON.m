//
//  NetJSON.m
//  AppBaseFramework
//
//  Created by honyork on 2016/11/4.
//  Copyright © 2016年 HuaJianCi. All rights reserved.
//

#import "NetJSON.h"

@implementation NetJSON
+ (NSString *)jsonStringWithObject:(id)object
{
    NSData *data = [NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:nil];
    
    NSString *jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    return jsonString;
}

+ ( id)objectFormJsonString:(NSString *)json
{
    
    NSData *data = [json dataUsingEncoding:NSUTF8StringEncoding];
    id weatherDic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    return weatherDic;
}


+ ( id)objectFormJsonData:(NSData *)jsondata
{
    
    id weatherDic = [NSJSONSerialization JSONObjectWithData:jsondata options:NSJSONReadingMutableLeaves error:nil];
    return weatherDic;
}
@end

@implementation NSObject (Json)

- (NSString *)JSONString
{
    return  [NetJSON jsonStringWithObject:self];
}

@end


@implementation NSString (ObjectForJson)

- (id)objectFromJSONString
{
    return [NetJSON objectFormJsonString:self];
}
@end

