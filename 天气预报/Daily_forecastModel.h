//
//  Daily_forecastModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import "BaseForceModel.h"
#import "CondModel.h"
#import "TmpModel.h"
#import "WindModel.h"


@interface Daily_forecastModel : JSONModel


@property (nonatomic,strong) CondModel *cond;
@property (nonatomic,copy) NSString *pcpn;
@property (nonatomic,copy) NSString *pres;
@property (nonatomic,strong) TmpModel *tmp;
@property (nonatomic,copy) NSString *vis;
@property (nonatomic,strong) BaseForceModel *base;

@end
