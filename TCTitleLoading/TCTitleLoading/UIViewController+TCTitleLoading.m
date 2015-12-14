//
//  UIViewController+TCTitleLoading.m
//  TCTitleLoading
//
//  Created by Travel Chu on 15/11/23.
//  Copyright © 2015年 TravelChu. All rights reserved.
//

#import "UIViewController+TCTitleLoading.h"
#import "UINavigationController+TCTitleLoading.h"
#import "TCTitleLoadingManager.h"

static const CGFloat IndicatorViewHeight = 8.0f;
@interface UIViewController()


@end

@implementation UIViewController (TCTitleLoading)


- (void)startAnimationTitle {
    if ([TCTitleLoadingManager shouldSkipForClass:[self class]]) {
        return;
    }
    if (!self.navigationController.tcIndicatorView) {
        CGRect indicatorViewFrame=self.navigationController.navigationBar.bounds;
        indicatorViewFrame.size.height=IndicatorViewHeight;
        indicatorViewFrame.origin.y=CGRectGetHeight(self.navigationController.navigationBar.bounds)-IndicatorViewHeight-5.0;
        self.navigationController.tcIndicatorView = [[TYDotIndicatorView alloc] initWithFrame:indicatorViewFrame dotStyle:TYDotIndicatorViewStyleCircle dotColor:[TCTitleLoadingManager dotColorForLoadingDot] dotSize:CGSizeMake(7.0, 7.0)];
        self.navigationController.tcIndicatorView.backgroundColor = [UIColor clearColor];
        self.navigationController.tcIndicatorView.hidesWhenStopped = NO;
        [self.navigationController.navigationBar addSubview:self.navigationController.tcIndicatorView];
    }
    [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:-IndicatorViewHeight forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.tcIndicatorView startAnimating];
}
- (void)stopAnimationTitle {
    if ([TCTitleLoadingManager shouldSkipForClass:[self class]]) {
        return;
    }
    [self.navigationController.tcIndicatorView stopAnimating];
    [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
}
@end
