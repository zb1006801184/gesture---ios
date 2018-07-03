//
//  GestureViewController.m
//  BlockDemo
//
//  Created by 朱标 on 2018/7/2.
//  Copyright © 2018年 zhubiao. All rights reserved.
//

#import "GestureViewController.h"
#import "TopTableViewTableViewCell.h"
#import "MainTableView.h"
@interface GestureViewController ()<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate,UIGestureRecognizerDelegate>
@property (nonatomic, strong)MainTableView *myTableView;
@property (nonatomic, strong)UITableView *topTableView;
@property (nonatomic, strong)TopTableViewTableViewCell *cell;
@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myTableView = [[MainTableView alloc]initWithFrame:self.view.bounds];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
    _myTableView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 100)];
    [self.view addSubview:_myTableView];
}
#pragma mark - UITableViewDelegate  UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (indexPath.row == 2) {
        self.cell =  [TopTableViewTableViewCell cellWithtableView:tableView];
        cell = self.cell;
        return cell;
    }
    if (!cell) {
        cell = [[UITableViewCell alloc]init];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 2) {
        return 800;
    }
    return 88;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 44)];
    UILabel *label = [[UILabel alloc]initWithFrame:view.bounds];
    label.text = @"1234";
    [view addSubview:label];
    view.backgroundColor = [UIColor redColor];
    return view;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat y =  scrollView.contentOffset.y;
    if (y >= 100) {
        self.cell.allowGestureBool = YES;
        
    }else if(y < 100 && !self.cell.allowGestureBool){

    }
    
    if ([scrollView isKindOfClass:[MainTableView class]] && y >= 100) {
        scrollView.contentOffset = CGPointMake(0, 100);
    }else {
        if (self.cell.allowGestureBool && !self.cell.parentGestureBool) {
            scrollView.contentOffset = CGPointMake(0, 100);
        }
    }

}


@end
