//
//  FirstViewController.m
//  TCTitleLoading
//
//  Created by Travel Chu on 15/11/23.
//  Copyright © 2015年 TravelChu. All rights reserved.
//

#import "FirstViewController.h"
#import "UIViewController+TCTitleLoading.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startLoading:(id)sender {
    [self startAnimationTitle];
}

- (IBAction)stopLoading:(id)sender {
    [self stopAnimationTitle];
}

@end
