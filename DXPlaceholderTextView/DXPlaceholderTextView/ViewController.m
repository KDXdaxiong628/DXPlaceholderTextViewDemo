//
//  ViewController.m
//  DXPlaceholderTextView
//
//  Created by kongdexiong on 16/8/18.
//  Copyright © 2016年 CoderDX. All rights reserved.
//

#import "ViewController.h"
#import "DXPlaceholderTextView.h"

#define kWindowWidth                        ([[UIScreen mainScreen] bounds].size.width)
#define kColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    DXPlaceholderTextView *text = [[DXPlaceholderTextView alloc] initWithFrame:CGRectMake(15, 100, kWindowWidth - 30, 100)];
    text.placeholder = @"亲，您遇到什么系统问题啦，或者有什么功能建议吗？欢迎您提供给我们，谢谢！";
    text.font = [UIFont systemFontOfSize:14];
    text.layer.cornerRadius = 3;
    text.layer.masksToBounds = YES;
    text.layer.borderWidth = 0.6;  // 给图层添加一个有色边框
    text.layer.borderColor = kColor(199, 199, 205).CGColor;
    
    text.placeholderColor = kColor(199, 199, 205);
    
    [self.view addSubview:text];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
