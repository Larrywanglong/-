//
//  CondModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface CondModel : JSONModel
@property (nonatomic,copy) NSString *code_d;
@property (nonatomic,copy) NSString *code_n;
@property (nonatomic,copy) NSString *txt_d;
@property (nonatomic,copy) NSString *txt_n;
@end
