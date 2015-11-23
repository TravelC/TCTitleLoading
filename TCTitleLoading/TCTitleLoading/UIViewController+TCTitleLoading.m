//
//  UIViewController+TCTitleLoading.m
//  TCTitleLoading
//
//  Created by Travel Chu on 15/11/23.
//  Copyright © 2015年 TravelChu. All rights reserved.
//

#import "UIViewController+TCTitleLoading.h"
#import "TCTitleLoadingManager.h"
#import <objc/runtime.h>

static NSString * const kTCTYDotIndicatorViewKey = @"kTCTYDotIndicatorViewKey";
static const CGFloat IndicatorViewHeight = 8.0f;

@interface UIViewController()
@property (nonatomic, strong) TYDotIndicatorView *tcIndicatorView;

@end

@implementation UIViewController (TCTitleLoading)
- (void)setIndicatorView:(TYDotIndicatorView *)tcIndicatorView {
    objc_setAssociatedObject(self, &kTCTYDotIndicatorViewKey, tcIndicatorView, OBJC_ASSOCIATION_RETAIN);
}

- (TYDotIndicatorView *)tcIndicatorView {
    return objc_getAssociatedObject(self, &kTCTYDotIndicatorViewKey);
}

- (void)startAnimationTitle {
    if ([TCTitleLoadingManager shouldSkipForClass:[self class]]) {
        return;
    }
    if (!self.tcIndicatorView) {
        CGRect indicatorViewFrame=self.navigationController.navigationBar.bounds;
        indicatorViewFrame.size.height=IndicatorViewHeight;
        indicatorViewFrame.origin.y=CGRectGetHeight(self.navigationController.navigationBar.bounds)-IndicatorViewHeight-5.0;
        self.indicatorView = [[TYDotIndicatorView alloc] initWithFrame:indicatorViewFrame dotStyle:TYDotIndicatorViewStyleCircle dotColor:[TCTitleLoadingManager dotColorForLoadingDot] dotSize:CGSizeMake(7.0, 7.0)];
        self.tcIndicatorView.backgroundColor = [UIColor clearColor];
        self.tcIndicatorView.hidesWhenStopped = NO;
        [self.navigationController.navigationBar addSubview:self.tcIndicatorView];
    }
    [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:-IndicatorViewHeight forBarMetrics:UIBarMetricsDefault];
    [self.tcIndicatorView startAnimating];
}
- (void)stopAnimationTitle {
    if ([TCTitleLoadingManager shouldSkipForClass:[self class]]) {
        return;
    }
    [self.tcIndicatorView stopAnimating];
    [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
}
@end
