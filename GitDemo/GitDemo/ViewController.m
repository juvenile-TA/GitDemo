//
//  ViewController.m
//  GitDemo
//
//  Created by g5-1 on 14/12/12.
//  Copyright (c) 2014年 g5-1. All rights reserved.
//

#import "ViewController.h"
#import "aaaa.h"
@interface ViewController ()
@property (nonatomic) int sum;
@property (nonatomic, strong) aaaa *aaa;
-(void)sayHello;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self sayHello ] ;
    
    NSLog(@"wo zhen shuai") ;
     NSLog(@"wo 依然zhen shuai") ;


    //int aaab = 9 ;
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(50,50, 200, 200) ] ;
    UIButton* btn2 = [[UIButton alloc]initWithFrame:CGRectMake(50,300, 200, 200) ] ;
    btn2.alpha = 0.9 ;
    btn.backgroundColor = [UIColor blueColor] ;
    btn2.backgroundColor = [UIColor redColor] ;
    [self.view addSubview:btn ];
    [self.view addSubview:btn2 ];
    [btn addTarget:self action:@selector(aaa:) forControlEvents:UIControlEventTouchUpInside ] ;
    

}
- (void)aaa:(UIButton*)sender{
    sender.alpha = sender.alpha - 0.1 ;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    int a = 5;
    int b = 10;
    
    self.sum = a + b;
    
    NSLog(@"The result is: %d", self.sum);
}
-(void)sayHello{
    NSLog(@"Hello");
}

@end
