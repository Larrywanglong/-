//
//  WindModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface WindModel : JSONModel
@property (nonatomic,copy) NSString *deg;
@property (nonatomic,copy) NSString *dir;
@property (nonatomic,copy) NSString *sc;
@property (nonatomic,copy) NSString *spd;
@end
