//
//  Target_A.m
//  demoCTMediator
//
//  Created by Nick on 2018/10/11.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "Target_A.h"
#import "HomeViewController.h"

@implementation Target_A

- (UIViewController *)Action_pushController:(NSDictionary *)dict {
    NSLog(@"%@", dict);
    HomeViewController *vc = [[HomeViewController alloc] init];
//    vc.data = dict;
    // viewdidload之后设置控件的属性才有效。。。
//    vc.titleLabel.text = dict[@"name"];
    return vc;
    
}

- (void)Action_presentController:(NSDictionary *)dict {
    NSLog(@"%@", dict);
    HomeViewController *vc = [[HomeViewController alloc] init];
//    vc.titleLabel.text = dict[@"age"];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];
}

@end
