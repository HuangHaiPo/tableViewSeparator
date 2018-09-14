//
//  ViewController.m
//  tableViewDividerLine
//
//  Created by aiden on 2018/9/14.
//  Copyright © 2018年 aiden. All rights reserved.
//


#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "TestTableViewCell.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic ,strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.automaticallyAdjustsScrollViewInsets = NO;
    [self tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[TestTableViewCell identifier]];
    if (cell == nil) {
        cell = [[TestTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[TestTableViewCell identifier]];
//        cell.indexPathType = indexPath;
//        cell.layoutMargins = UIEdgeInsetsZero;
    }
    
    return cell;
}
//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
//    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
//        [cell setLayoutMargins:UIEdgeInsetsZero];
//    }
//    if ([cell respondsToSelector:@selector(setSeparatorInset:)]){
//        [cell setSeparatorInset:UIEdgeInsetsZero];
//    }
//}
//- (void)viewDidLayoutSubviews{
//    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
//        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
//    }
//    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)])  {
//        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
//    }
//}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kWidth, kHeight) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
//        _tableView.separatorInset = UIEdgeInsetsZero;
//        _tableView.layoutMargins = UIEdgeInsetsZero;
//        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor redColor];
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

@end
