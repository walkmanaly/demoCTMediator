//
//  Target_A.m
//  demoCTMediator
//
//  Created by Nick on 2018/10/11.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "Target_A.h"
#import "PushViewController.h"

@implementation Target_A

- (UIViewController *)Action_pushController:(NSDictionary *)dict {
    NSLog(@"%@", dict);
    PushViewController *vc = [[PushViewController alloc] init];
    vc.titleLabel.text = dict[@"name"];
    return vc;
    
}

@end
