//
//  SuggestionModel.h
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface SuggestionModel : JSONModel
@property (nonatomic, copy) NSString *txt;//天气健康提醒
@end
