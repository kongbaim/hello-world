//
//  ViewController.m
//  BaseController1_1
//
//  Created by liumu on 16/3/7.
//  Copyright © 2016年 lanco. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化
    self.myView.contentMode = UIViewContentModeTopLeft;
    
    self.myView =[[UIView alloc] initWithFrame:CGRectMake(200, 200, 50, 50)];
    //给myview添加背景色
 self.myView.backgroundColor = [UIColor redColor];
    //设置圆角
    self.myView.layer.cornerRadius = 20;
    //添加子视图到俯视图上
    [self.view addSubview:self.myView];
    self.view.backgroundColor = [UIColor purpleColor];
    //测试模拟器尺寸，即父视图的大小
    //frame 相对父视图的坐标位置
    CGRect rect = self.view.frame;
    NSLog(@"%@",NSStringFromCGRect(rect));
    //bounds  只是显示当前视图的大小，和位置无关 (0,0);
        //控件相对于父视图的中心点坐标
    NSLog(@"%@",NSStringFromCGPoint(self.myView.center));
    //self.myView.center = CGPointMake(325, 620);
 //self.myView.bounds = CGRectMake(0, 0, 70, 70);
   // self.myView.center = (CGPoint){25,36};
    //水平方向移动10个点
    //self.myView.transform = CGAffineTransformMakeTranslation(10, 0);
    //视图宽高增加n倍
    //self.myView.transform = CGAffineTransformMakeScale(2, 2);
    //视图旋转
   self.myView.transform = CGAffineTransformMakeRotation(0.2);
    self.myView.tintColor = [UIColor redColor];
    NSLog(@"myview.bounds:%@",NSStringFromCGRect(self.myView.frame));
    NSLog(@"Hello world");
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
