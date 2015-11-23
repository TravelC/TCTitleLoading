//
//  TCTitleLoadingManager.h
//  TCTitleLoading
//
//  Created by Travel Chu on 15/11/23.
//  Copyright © 2015年 TravelChu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TCTitleLoadingManager : NSObject

/**
 *  Add the class to the skip list
 *
 *  @param classToSkip the class to skip title loading
 */
+ (void)skipTitleLoadingForClass:(nonnull Class)classToSkip;

/**
 *  Check is the class is in the skip list
 *
 *  @param aClass the class to check
 *
 *  @return Yes for in the list, no for the opposite
 */
+ (BOOL)shouldSkipForClass:(nonnull Class)aClass;

/**
 *  Set custom color for dots default is black color
 *
 *  @param dotColor custom color for dots
 */
+ (void)setDotColor:(nullable UIColor*)dotColor;

/**
 *  Get current dot color
 *
 *  @return current dot color
 */
+ (nonnull UIColor*)dotColorForLoadingDot;

@end
