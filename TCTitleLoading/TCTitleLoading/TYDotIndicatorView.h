//
//  TYDotIndicatorView.h
//  TYDotIndicatorView
//
//  Created by Tu You on 14-1-12.
//  Copyright (c) 2014年 Tu You. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSInteger, TYDotIndicatorViewStyle){
    TYDotIndicatorViewStyleSquare,
    TYDotIndicatorViewStyleRound,
    TYDotIndicatorViewStyleCircle
};
@protocol TYDotIndicatorViewDelegate <NSObject>

@required
- (void)tcUpdateFrame;

@end

@interface TYDotIndicatorView : UIView

@property (nonatomic, assign) BOOL hidesWhenStopped;
@property (nonatomic, weak) id <TYDotIndicatorViewDelegate> delegate;

- (id)initWithFrame:(CGRect)frame
           dotStyle:(TYDotIndicatorViewStyle)style
           dotColor:(UIColor *)dotColor
            dotSize:(CGSize)dotSize;

- (void)startAnimating;
- (void)stopAnimating;
- (BOOL)isAnimating;


@end
