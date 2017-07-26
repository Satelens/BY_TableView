//
//  ViewController.m
//  HBYTableView
//
//  Created by Satelens on 16/6/14.
//  Copyright © 2016年 Satelens. All rights reserved.
//

#import "ViewController.h"
#import "HBYDataSource.h"
#import "HBYTableViewDelegate.h"
#import "TmpCell.h"

@interface ViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@property (strong, nonatomic) HBYDataSource *dataSoucre;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [_tableView registerClass:[TmpCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:_tableView];
    _dataSoucre = [[HBYDataSource alloc] initWithIdentifier:@"Cell" configureBlock:^(id cell, id model, NSIndexPath *indexPath) {
        ((TmpCell *)cell).label1.text = model;
    }];
    
    _tableView.dataSource = _dataSoucre;
    _tableView.delegate = self;
    [_dataSoucre addModels:@[@"1"]];
    [_tableView reloadData];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"123");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
