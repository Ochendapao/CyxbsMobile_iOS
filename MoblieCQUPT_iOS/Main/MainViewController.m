//
//  MainViewController.m
//  MoblieCQUPT_iOS
//
//  Created by user on 15/8/20.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//

#import "MainViewController.h"
#import "BaseNavigationController.h"
@interface MainViewController ()
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *titles = @[@"课表",@"社区",@"发现",@"我的"];
    NSArray *images = @[@"tabbar_image_timetable",@"tabbar_image_community",@"tabbar_image_find",@"tabbar_image_mine"];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor colorWithHexString:@"788EFA"];
    for (int i = 0; i<self.viewControllers.count; i++) {
        BaseNavigationController *nvc = self.viewControllers[i];
        nvc.topViewController.title = titles[i];
        UIBarButtonItem *backItem=[[UIBarButtonItem alloc]init];
        backItem.title=@"";
        nvc.topViewController.navigationItem.backBarButtonItem = backItem;
        nvc.tabBarItem.image = [UIImage imageNamed:images[i]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
