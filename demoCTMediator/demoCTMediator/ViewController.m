//
//  ViewController.m
//  demoCTMediator
//
//  Created by Nick on 2018/10/11.
//  Copyright © 2018 Nick. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+ModuleA.h"
#import "CTMediator+ModuleHome.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

#pragma mark datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

#pragma mark delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        UIViewController *vc = [CTMediator pushVc];
        [self.navigationController pushViewController:vc animated:YES];
    } else if (indexPath.row == 1) {
        [CTMediator presentVc];
    } else if (indexPath.row == 2) {
        UIViewController *vc = [CTMediator forwordToHomeWithParams:@{@"greeting": @"hello"}];
        [self.navigationController pushViewController:vc animated:YES];
    } else if (indexPath.row == 3) {
        [CTMediator presentImageWithImage:[UIImage imageNamed:@"test"]];
    } else if (indexPath.row == 4) {
        [CTMediator presentImageWithImage:nil];
    } else if (indexPath.row == 5) {
        
    }
}

- (NSArray *)dataSource {
    if (!_dataSource) {
        _dataSource = @[@"pushVC", @"presentVC", @"homeModul", @"presnt image", @"no image", @"show aleart"];
    }
    return _dataSource;
}

@end
