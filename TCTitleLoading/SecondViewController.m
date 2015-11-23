//
//  SecondViewController.m
//  TCTitleLoading
//
//  Created by Travel Chu on 15/11/23.
//  Copyright © 2015年 TravelChu. All rights reserved.
//

#import "SecondViewController.h"
#import "UIViewController+TCTitleLoading.h"
#import "TCTitleLoadingManager.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Skip title loading for this page
    [TCTitleLoadingManager skipTitleLoadingForClass:[self class]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startLoading:(id)sender {
    [self startAnimationTitle];
    [self.loadingView startAnimating];
}

- (IBAction)stopLoading:(id)sender {
    [self stopAnimationTitle];
    [self.loadingView stopAnimating];
}

@end
