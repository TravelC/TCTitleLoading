//
//  TCTitleLoadingManager.m
//  TCTitleLoading
//
//  Created by Travel Chu on 15/11/23.
//  Copyright © 2015年 TravelChu. All rights reserved.
//

#import "TCTitleLoadingManager.h"

@interface TCTitleLoadingManager ()
@property (nonatomic, strong) NSMutableSet *skipSet;
@property (nonatomic, strong) UIColor *dotColor;
@end

@implementation TCTitleLoadingManager

+ (TCTitleLoadingManager *)manager {
    static dispatch_once_t once;
    static TCTitleLoadingManager *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });

    return sharedInstance;
}

+ (void)skipTitleLoadingForClass:(nonnull Class)classToSkip {
    if (![TCTitleLoadingManager manager].skipSet) {
        [TCTitleLoadingManager manager].skipSet = [NSMutableSet set];
    }
    [[TCTitleLoadingManager manager].skipSet addObject:classToSkip];
}
+ (BOOL)shouldSkipForClass:(nonnull Class)aClass {
    if ([[TCTitleLoadingManager manager].skipSet containsObject:aClass]) {
        return YES;
    }
    return NO;
}

+ (void)setDotColor:(nullable UIColor *)dotColor{
    if (dotColor) {
        [TCTitleLoadingManager manager].dotColor = dotColor;
    }
}

+ (UIColor*)dotColorForLoadingDot{
    if ([TCTitleLoadingManager manager].dotColor) {
        return [TCTitleLoadingManager manager].dotColor;
    }
    return [UIColor blackColor];
}
@end
