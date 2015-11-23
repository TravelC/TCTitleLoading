//
//  UIViewController+TCTitleLoading.h
//  TCTitleLoading
//
//  Created by Travel Chu on 15/11/23.
//  Copyright © 2015年 TravelChu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYDotIndicatorView.h"

@interface UIViewController (TCTitleLoading)

/**
 *  Start the loading animation
 */
- (void)startAnimationTitle;
/**
 *  Stop the loading animation
 */
- (void)stopAnimationTitle;

@end
