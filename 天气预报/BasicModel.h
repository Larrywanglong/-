//
//  BasicModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

/*
 城市的基本信息
 
 */

#import <JSONModel/JSONModel.h>
#import "UpdateModel.h"

@interface BasicModel : JSONModel
@property (nonatomic,copy) NSString *city;//城市
@property (nonatomic,copy) NSString *cnty;//国家
@property (nonatomic,copy) NSString *lat;//纬度
@property (nonatomic,copy) NSString *lon;//经度
@property (nonatomic,strong) UpdateModel *update;

@end
