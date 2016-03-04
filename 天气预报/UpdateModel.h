//
//  UpdateModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface UpdateModel : JSONModel

@property (nonatomic,copy) NSString *loc;//当地时间
@property (nonatomic,copy) NSString *utc;//国际标准时间


@end
