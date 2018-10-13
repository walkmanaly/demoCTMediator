//
//  CTMediator+ModuleHome.m
//  demoCTMediator
//
//  Created by Nick on 2018/10/13.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "CTMediator+ModuleHome.h"

NSString * const kModuleHomeTarget = @"Home";

NSString * const kModuleHomeAction = @"homePushvc";
NSString * const kModuleHomeDetailAction = @"homeDetailPushvc";
NSString * const kModuleHomePresentImageAction = @"homePresentImage";

typedef void(^HomeModuleAleartBlock)(NSDictionary *info);

@implementation CTMediator (ModuleHome)

+ (UIViewController *)forwordToHomeWithParams:(NSDictionary *)params {
    UIViewController *vc = [[CTMediator sharedInstance] performTarget:kModuleHomeTarget action:kModuleHomeAction params:params shouldCacheTarget:NO];
    
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    } else {
        return [[UIViewController alloc] init];
    }
}

+ (UIViewController *)forwordToHomeDetailWithParams:(NSDictionary *)params {
    UIViewController *vc = [[CTMediator sharedInstance] performTarget:kModuleHomeTarget action:kModuleHomeDetailAction params:params shouldCacheTarget:NO];
    
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    } else {
        return [[UIViewController alloc] init];
    }
}

+ (void)presentImageWithImage:(nullable UIImage *)image {
    if (image) {
        UIViewController *vc = [[CTMediator sharedInstance] performTarget:kModuleHomeTarget action:kModuleHomePresentImageAction params:@{@"image": image} shouldCacheTarget:NO];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];
    } else {
        UIViewController *vc = [[CTMediator sharedInstance] performTarget:kModuleHomeTarget action:kModuleHomePresentImageAction params:@{@"image": [UIImage imageNamed:@"noimage"]} shouldCacheTarget:NO];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];
    }
}

+ (void)prensentAleartWithTitle:(NSString *)title message:(NSString *)message Cancel:(HomeModuleAleartBlock)cancel comfire:(HomeModuleAleartBlock)comfire {
    NSMutableDictionary *mulDict = [[NSMutableDictionary alloc] init];
//    if (title) {
//        mulDict[@"title"] = title;
//    }
//    if (cancel) {
//        mulDict[@"cancel"] = cancel;
//    }
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
//    if (comfire) {
//        mulDict[@"comfire"] = comfire;
//    }
    UIAlertAction *comfireAction = [UIAlertAction actionWithTitle:@"comfire" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertController *avc = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    [avc addAction:cancelAction];
    [avc addAction:comfireAction];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:avc animated:YES completion:nil];
}

@end
