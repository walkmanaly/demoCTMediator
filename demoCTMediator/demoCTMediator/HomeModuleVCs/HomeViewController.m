//
//  PushViewController.m
//  demoCTMediator
//
//  Created by Nick on 2018/10/11.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "HomeViewController.h"
#import "CTMediator+ModuleHome.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (self.sendData[@"greeting"]) {
        self.titleLabel.text = self.sendData[@"greeting"];
    }
    if (self.sendData[@"image"]) {
        self.imagee.image = self.sendData[@"image"];
    }
}
- (IBAction)goBack:(UIButton *)sender {
    if (self.navigationController == nil) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (IBAction)pushVcAction:(UIButton *)sender {
    UIViewController *vc = [CTMediator forwordToHomeDetailWithParams:@{@"home": @"detail"}];
    [self.navigationController pushViewController:vc animated:YES];
}

//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    self.titleLabel.text = @"hahahahaha";
//}

@end
