//
//  AQIModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

// 空气质量 模型

#import <JSONModel/JSONModel.h>

@interface AQIModel : JSONModel

@property (nonatomic,copy) NSString *aqi;//空气质量指数
@property (nonatomic,copy) NSString *co;//一氧化碳
@property (nonatomic,copy) NSString *no2;//二氧化氮
@property (nonatomic,copy) NSString *o3;//臭氧
@property (nonatomic,copy) NSString *pm10;
@property (nonatomic,copy) NSString *pm25;
@property (nonatomic,copy) NSString *qlty;//空气质量
@property (nonatomic,copy) NSString *so2;//二氧化硫

@end
