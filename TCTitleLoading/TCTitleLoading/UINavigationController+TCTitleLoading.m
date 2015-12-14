//
//  UINavigationController+TCTitleLoading.m
//  TCTitleLoading
//
//  Created by Travel Chu on 15/12/14.
//  Copyright © 2015年 TravelChu. All rights reserved.
//

#import "UINavigationController+TCTitleLoading.h"
#import <objc/runtime.h>

static NSString * const kTCTYDotIndicatorViewKey = @"kTCTYDotIndicatorViewKey";

@implementation UINavigationController (TCTitleLoading)
- (void)setTcIndicatorView:(TYDotIndicatorView *)tcIndicatorView {
    objc_setAssociatedObject(self, &kTCTYDotIndicatorViewKey, tcIndicatorView, OBJC_ASSOCIATION_RETAIN);
}

- (TYDotIndicatorView *)tcIndicatorView {
    return objc_getAssociatedObject(self, &kTCTYDotIndicatorViewKey);
}
@end
