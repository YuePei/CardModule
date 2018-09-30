//
//  SecondVC.m
//  NAVI
//
//  Created by Peyton on 2018/9/29.
//  Copyright © 2018年 Peyton. All rights reserved.
//

#import "SecondVC.h"
#define MAS_SHORTHAND
#import "Masonry.h"

#define blackMainColor [UIColor colorWithRed:33 / 255.0 green:36 / 255.0 blue:41 / 255.0 alpha:1]
//屏幕宽高
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface SecondVC ()
//ContentScrollView
@property (nonatomic, strong)UIScrollView *contentScrollView;
//pageControl
@property (nonatomic, strong)UIPageControl *pageControl;

@end

@implementation SecondVC
static const int pageNumber = 4;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"second";
    if (@available(iOS 11, *)) {
        [UIScrollView appearance].contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    [self contentScrollView];
    
    
}

#pragma mark lazy
- (UIScrollView *)contentScrollView {
    if (!_contentScrollView) {
        _contentScrollView = [[UIScrollView alloc]init];
        [self.view addSubview:_contentScrollView];
        [_contentScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(0);
            make.top.mas_equalTo(150);
            make.bottom.mas_equalTo(-80);
        }];
        _contentScrollView.backgroundColor = blackMainColor;
        
        _contentScrollView.pagingEnabled = YES;
        [_contentScrollView setContentSize:CGSizeMake(SCREEN_WIDTH * pageNumber, CGRectGetHeight(_contentScrollView.bounds))];
        
        UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
        [_contentScrollView addSubview:redView];
        redView.backgroundColor = [UIColor redColor];
        
        UIView *redView2 = [[UIView alloc]initWithFrame:CGRectMake(400, 100, 100, 100)];
        [_contentScrollView addSubview:redView2];
        redView2.backgroundColor = [UIColor redColor];
    }
    return _contentScrollView;
}

- (UIPageControl *)pageControl {
    if (!_pageControl) {
        _pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, 400, SCREEN_WIDTH, 30)];
        [self.view insertSubview:_pageControl aboveSubview:self.contentScrollView];
        _pageControl.numberOfPages = pageNumber;
        _pageControl.currentPage = 1;
        _pageControl.pageIndicatorTintColor = [UIColor whiteColor];
        _pageControl.currentPageIndicatorTintColor = [UIColor lightGrayColor];
        
    }
    return _pageControl;
}
@end
