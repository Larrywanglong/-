//
//  HTTPManager.m
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import "HTTPManager.h"
#import "AFNetworking.h"

@implementation HTTPManager

+ (instancetype)defaultHttpManager{
    static HTTPManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[HTTPManager alloc]init];
    });
    return manager;
}

#pragma mark -------  网络请求的方法
- (void)getMessageWithURLString:(NSString *)urlString header:(NSDictionary *)header completionHander:(CompletionHandler)completionHander{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    [request addValue:header.allValues[0] forHTTPHeaderField:header.allKeys[0]];
    
//    2、创建session
   AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
//    3、创建任务
   NSURLSessionDataTask *task = [sessionManager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
       
       completionHander(responseObject,error);
       
    }];
    
//    4、开启任务
    [task resume];
    
    
    
//    
//    [sessionManager GET:urlString parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//        
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        
//    }];
//    [sessionManager GET:urlString parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        
//    }];
//    
//    
//    [task resume];
    
    
    
}

/*
 一、aqi:空气质量
 
 二、basic:城市基本信息
 三、daily_forecast 七日内的天气
 四、hourly_forecast 三个小时内的天气
 五、now 实况天气
 六、suggestion 生活指数
 
 
 */

#pragma mark --------  请求天气情况的方法
- (void)getWeatherWithCityName:(NSString *)cityName{
//    http://apis.baidu.com/heweather/weather/free?city=zhengzhou
//   NSString *string = [NSString stringWithFormat:@"%@?%@",HOST_NAME,@"city=zhengzhou"];
    
    [self getMessageWithURLString:[NSString stringWithFormat:@"%@%@?city=%@",HOST_NAME,GET_WEATHER,cityName] header:@{@"apikey":@"800df6eb77392d2205b55cfccbcc1662"} completionHander:^(id responseObject, NSError *error) {
//        NSLog(@"%@",responseObject[@"HeWeather data service 3.0"][0]);
        
        
        NSDictionary *info = responseObject[@"HeWeather data service 3.0"][0];
        AQIModel *aqi = [[AQIModel alloc]initWithDictionary:info[@"aqi"][@"city"] error:nil];
         NSLog(@"%@",aqi.qlty);
        
        
        BasicModel *basic = [[BasicModel alloc]initWithDictionary:info[@"basic"] error:nil];
         NSLog(@"%@",basic.update.loc);
        
        
        
        NSArray *daylist = [Daily_forecastModel arrayOfModelsFromDictionaries:info[@"daily_forecast"] error:nil];
        Daily_forecastModel *model = daylist[3];
        NSLog(@"%@",model.vis);
        
        
        NSArray *hoursList = [Hourly_forecastModel arrayOfModelsFromDictionaries:info[@"hourly_forecast"] error:nil];
        Hourly_forecastModel *hourModel = hoursList[0];
        NSLog(@"%@",hourModel.tmp);
        NowModel *now = [[NowModel alloc] initWithDictionary:info[@"now"] error:nil];
        NSLog(@"%@",now.tmp);
        
        SuggestionModel *suggestion = [[SuggestionModel alloc] initWithDictionary:info[@"suggestion"][@"flu"] error:nil];
        NSLog(@"%@",suggestion.txt);
        
        
        
        
    }];
}






@end
