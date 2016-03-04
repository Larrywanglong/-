//
//  BaseForceModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "WindModel.h"

@interface BaseForceModel : JSONModel
@property (nonatomic,copy) NSString *date;
@property (nonatomic,copy) NSString *hum;
@property (nonatomic,copy) NSString *pop;
@property (nonatomic,copy) NSString *pres;
@property (nonatomic,strong) WindModel *wind;
@end
