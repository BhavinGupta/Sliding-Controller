//
//  MenuViewController.m
//  DemoSlidingController
//
//  Created by Bhavin Gupta on 07/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Setting int index value as default -1
    self.intIndex = -1;
    
    // Intializing Sliding Controller
    self.slidingController = self.slidingController;
    
    // Array Intailization
    self.aryMenuView = [NSMutableArray new];
    [self.aryMenuView addObjectsFromArray:@[@"Home", @"Dashboard", @"Settings"]];
    [self.tblMenuView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableView Delegate And Datasource Method
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.aryMenuView count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"idCellMenuView";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",self.aryMenuView[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(self.intIndex == indexPath.row)
        return;
    else
        self.intIndex = indexPath.row;
    
    UINavigationController *navVC;
    
    if(self.intIndex == 0) {
        ViewController *homeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        navVC = [[UINavigationController alloc]initWithRootViewController:homeVC];
    }
    else if(self.intIndex == 1) {
        DashboardViewController *dashboardVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DashboardViewController"];
        navVC = [[UINavigationController alloc]initWithRootViewController:dashboardVC];
    }
    else if(self.intIndex == 2) {
        SettingsViewController *settingsVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingsViewController"];
        navVC = [[UINavigationController alloc]initWithRootViewController:settingsVC];
    }
    [self.slidingController setTopViewController:navVC animated:YES];
}

@end
