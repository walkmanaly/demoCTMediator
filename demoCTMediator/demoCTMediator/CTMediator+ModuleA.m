//
//  CTMediator+ModuleA.m
//  demoCTMediator
//
//  Created by Nick on 2018/10/11.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "CTMediator+ModuleA.h"

static  NSString *kTarget = @"A";

static  NSString *kActionPushController = @"pushController";
static  NSString *kActionPresentController = @"presentController";

@implementation CTMediator (ModuleA)

+ (UIViewController *)pushVc {
    UIViewController *pushvc = [[CTMediator sharedInstance] performTarget:kTarget action:kActionPushController params:@{@"name": @"Nick"} shouldCacheTarget:NO];
    if ([pushvc isKindOfClass:[UIViewController class]]) {
        return pushvc;
    } else {
        
        return nil;
    }
}

@end
