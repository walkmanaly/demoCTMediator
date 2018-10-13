//
//  CTMediator+ModuleA.m
//  demoCTMediator
//
//  Created by Nick on 2018/10/11.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "CTMediator+ModuleA.h"

NSString *const kTarget = @"A";

NSString * const kActionPushController = @"pushController";
NSString * const kActionPresentController = @"presentController";

@implementation CTMediator (ModuleA)

+ (UIViewController *)pushVc {
    UIViewController *pushvc = [[CTMediator sharedInstance] performTarget:kTarget action:kActionPushController params:@{@"name": @"Nick"} shouldCacheTarget:NO];
    if ([pushvc isKindOfClass:[UIViewController class]]) {
        return pushvc;
    } else {
        
        return nil;
    }
}

+ (void)presentVc {
    [[CTMediator sharedInstance] performTarget:kTarget action:kActionPresentController params:@{@"age": @"18"} shouldCacheTarget:NO];
//    if ([presentVc isKindOfClass:[UIViewController class]]) {
//        return presentVc;
//    } else {
//        return nil;
//    }
}

@end
