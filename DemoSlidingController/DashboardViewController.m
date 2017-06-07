//
//  DashboardViewController.m
//  DemoSlidingController
//
//  Created by Bhavin Gupta on 07/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import "DashboardViewController.h"

@interface DashboardViewController ()

@end

@implementation DashboardViewController

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Button Action Method
- (IBAction)onClickMenuButton:(id)sender{
    NHSlidingController *slidingController = self.slidingController;
    [slidingController toggleDrawer];
}

@end
