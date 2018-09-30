//
//  ViewController.m
//  NAVI
//
//  Created by Peyton on 2018/9/18.
//  Copyright © 2018年 Peyton. All rights reserved.
//

#import "ViewController.h"
#import "SecondVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Main";
    if (@available(iOS 11, *)) {
        [UIScrollView appearance].contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[SecondVC new] animated:YES];
}

@end
