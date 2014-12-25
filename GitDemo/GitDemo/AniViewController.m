//
//  AniViewController.m
//  GitDemo
//
//  Created by g5-1 on 14/12/22.
//  Copyright (c) 2014年 g5-1. All rights reserved.
//

#import "AniViewController.h"

@interface AniViewController ()
@property (nonatomic ,strong) UIImageView* fengcheIV ;
@end

@implementation AniViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(50, 50 , 100, 200) ];
    //view.superview.backgroundColor = [UIColor redColor] ;
    view.backgroundColor = [UIColor cyanColor] ;
    self.fengcheIV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"BookShelfCell.png"] ];
    self.fengcheIV.frame = CGRectMake(0, 0, 100, 100) ;
    [view addSubview:self.fengcheIV ];
    [self.view addSubview:view];
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(lspin) userInfo:self repeats:YES ] ;
    
    UIView* view2 = [[UIView alloc]initWithFrame:CGRectMake(250, 50 , 250, 300) ];
    view.backgroundColor = [UIColor colorWithRed:111 green:111 blue:111 alpha:1] ;
//    CGContextRef ctx = UIGraphicsGetCurrentContext();//获取当前ctx
//    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
//    CGContextSetLineWidth(ctx, 15.0);  //线宽
//    CGContextSetAllowsAntialiasing(ctx, YES);
//    CGContextSetRGBStrokeColor(ctx, 1.0, 0.0, 0.0, 1.0);  //颜色
//    CGContextBeginPath(ctx);
//    CGContextMoveToPoint(ctx, 100, 100);  //起点坐标
//    CGContextAddLineToPoint(ctx, 200, 100);   //终点坐标
//    CGContextStrokePath(ctx);
    [self.view addSubview:view2 ] ;
//    
//    
//    
//    
//    
//
//    
//    //画两条射线
//    // 创建一个Path句柄
//    CGMutablePathRef pathRef = CGPathCreateMutable();
//    // 初始化该path到一个初始点
//    CGPathMoveToPoint(pathRef, &CGAffineTransformIdentity, 100.0f, 0.0f);
//    // 添加一条直线，从初始点到该函数指定的坐标点
//    CGPathAddLineToPoint(pathRef, &CGAffineTransformIdentity, 150.0f, 100.0f);
//    CGPathMoveToPoint(pathRef, &CGAffineTransformIdentity, 100.0f, 0.0f);
//    CGPathAddLineToPoint(pathRef, &CGAffineTransformIdentity, 100.0f, 150.0f);
//    CGPathCloseSubpath(pathRef);
//    // 关闭该path
//    CGPathCloseSubpath(pathRef);
//    // 将此path添加到Quartz上下文中
//    CGContextAddPath(ctx, pathRef);
//    // 对上下文进行描边
//    CGContextStrokePath(ctx);
//    
//    //画三角形
//    //CGMutablePathRef pathRef = CGPathCreateMutable();
//    // 初始化该path到一个初始点
//    CGPathMoveToPoint(pathRef, &CGAffineTransformIdentity, 0.0f, 0.0f);
//    // 添加一条直线，从初始点到该函数指定的坐标点
//    CGPathAddLineToPoint(pathRef, &CGAffineTransformIdentity, 50.0f, 100.0f);
//    CGPathAddLineToPoint(pathRef, &CGAffineTransformIdentity, 100.0f, 50.0f);
//    // 关闭该path
//    CGPathCloseSubpath(pathRef);
//    // 关闭该path
//    CGPathCloseSubpath(pathRef);
//    // 将此path添加到Quartz上下文中
//    CGContextAddPath(ctx, pathRef);
//    
//    // 对上下文进行描边
//    CGContextStrokePath(ctx);
    
    
}
//- (void)drawRect:(CGRect)rect
//{
//    //获取上下文
//    CGContextRef ctx=UIGraphicsGetCurrentContext();
//    //绘图
//    //第一条线
//    CGContextMoveToPoint(ctx, 20, 100);
//    CGContextAddLineToPoint(ctx, 100, 320);
//    
//    //第二条线
//    CGContextMoveToPoint(ctx, 40, 200);
//    CGContextAddLineToPoint(ctx, 80, 100);
//    //渲染
//    CGContextStrokePath(ctx);
//    
//}
- (void)lspin {
    CGPoint center = CGPointMake(50, 50) ;
    self.fengcheIV.center = center ;
    CGAffineTransform transform = self.fengcheIV.transform ;
    transform = CGAffineTransformRotate(transform, M_1_PI);
    self.fengcheIV.transform = transform ;
    //Point p = self.fengcheIV.transform ;
   // self.fengcheIV.transform =  ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
