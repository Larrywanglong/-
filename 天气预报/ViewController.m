//
//  ViewController.m
//  天气预报
//
//  Created by 王龙 on 16/3/1.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

/*
 
 1、城市信息
 2、当天天气
 3、近期天气  曲线图
 4、空气指数 建议
 5、语音播报
 
 背景：根据天气情况更改的
 文字：根据温度来改变文字的颜色  小于0度  蓝色  0 - 20 白色 20以上 红色
 
 */

/*
 
 分层写
 一、控制器层 -> ViewController
 二、数据层
    （1）数据请求的网络交互
    （2）数据模型
 三、视图层
   （1）背景视图层
   （2）各个模块单独的视图
 
 */
/*
 AFNetWorking : AFHTTPSessionManager:(NSURLSession)
 1.request
 2.session
 3.创建请求任务：NSURLSessionDataTask
 4.开启任务
 请求下来的数据 不需要再去解析。.
 */

#import "ViewController.h"

@interface ViewController ()
{
    UIScrollView *backGroundView;
    UIImageView *showWeatherView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    backGroundView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    backGroundView.contentSize = CGSizeMake(0, CGRectGetHeight(self.view.frame)+1);
    [self.view addSubview:backGroundView];
    showWeatherView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [backGroundView addSubview:showWeatherView];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
