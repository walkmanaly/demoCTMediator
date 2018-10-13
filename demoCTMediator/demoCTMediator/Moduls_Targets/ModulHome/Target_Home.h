//
//  Target_Home.h
//  demoCTMediator
//
//  Created by Nick on 2018/10/13.
//  Copyright © 2018 Nick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Home : NSObject

- (UIViewController *)Action_homePushvc:(NSDictionary *)params;
- (UIViewController *)Action_homeDetailPushvc:(NSDictionary *)params;
- (UIViewController *)Action_homePresentImage:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
