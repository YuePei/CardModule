//
//  YSNavigationController.m
//  NAVI
//
//  Created by Peyton on 2018/9/29.
//  Copyright © 2018年 Peyton. All rights reserved.
//

#import "YSNavigationController.h"

#define blackMainColor [UIColor colorWithRed:33 / 255.0 green:36 / 255.0 blue:41 / 255.0 alpha:1]

@interface YSNavigationController ()

@end

@implementation YSNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize {
    NSLog(@"init1");
    [self setNavigationBarStyle];
}

+ (void)setNavigationBarStyle {
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBarTintColor:blackMainColor];
    [bar setShadowImage:[UIImage new]];
    
    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont systemFontOfSize:14]}];
    [bar setTintColor:[UIColor whiteColor]];
}

@end
