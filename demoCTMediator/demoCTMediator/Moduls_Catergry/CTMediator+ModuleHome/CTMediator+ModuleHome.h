//
//  CTMediator+ModuleHome.h
//  demoCTMediator
//
//  Created by Nick on 2018/10/13.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleHome)

+ (UIViewController *)forwordToHomeWithParams:(NSDictionary *)params;
+ (UIViewController *)forwordToHomeDetailWithParams:(NSDictionary *)params;
+ (void)presentImageWithImage:(nullable UIImage *)image;

@end

NS_ASSUME_NONNULL_END
