//
//  Target_Home.m
//  demoCTMediator
//
//  Created by Nick on 2018/10/13.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "Target_Home.h"
#import "HomeViewController.h"
#import "HomeDetailViewController.h"

@implementation Target_Home

- (UIViewController *)Action_homePushvc:(NSDictionary *)params {
    HomeViewController *vc = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    vc.sendData = params;
    return vc;
}

- (UIViewController *)Action_homeDetailPushvc:(NSDictionary *)params {
    HomeDetailViewController *vc = [[HomeDetailViewController alloc] initWithNibName:@"HomeDetailViewController" bundle:nil];
    vc.dict = params;
    return vc;
}

- (UIViewController *)Action_homePresentImage:(NSDictionary *)params {
    HomeViewController *vc = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    vc.sendData = params;
    return vc;
}

@end
