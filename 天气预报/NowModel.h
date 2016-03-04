//
//  NowModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "WindModel.h"
#import "NewCondModel.h"

@interface NowModel : JSONModel
@property (nonatomic, strong) NewCondModel *cond;
@property (nonatomic, strong) WindModel *wind;
@property (nonatomic, copy) NSString *tmp;//当前温度
@property (nonatomic, copy) NSString *pcpn;//降水量
@property (nonatomic, copy) NSString *vis;//能见度

@end
