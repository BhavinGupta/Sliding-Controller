//
//  MenuViewController.h
//  DemoSlidingController
//
//  Created by Bhavin Gupta on 07/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NHSlidingController.h>
#import <UIViewController+SlidingController.h>
#import "ViewController.h"
#import "DashboardViewController.h"
#import "SettingsViewController.h"

@interface MenuViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tblMenuView;
@property (strong, nonatomic) NSMutableArray *aryMenuView;
@property (strong, nonatomic) NHSlidingController *slidingController;
@property (assign, nonatomic) NSInteger intIndex;

@end
