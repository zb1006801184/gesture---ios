//
//  TopTableViewTableViewCell.m
//  BlockDemo
//
//  Created by 朱标 on 2018/7/2.
//  Copyright © 2018年 zhubiao. All rights reserved.
//

#import "TopTableViewTableViewCell.h"
@interface TopTableViewTableViewCell ()<UITableViewDelegate,UITableViewDataSource,UIGestureRecognizerDelegate>
@property (nonatomic, strong)UITableView *myTableView;
@end
@implementation TopTableViewTableViewCell

+(instancetype)cellWithtableView:(UITableView *)tableview
{
    static NSString *ID = @"TopTableViewTableViewCell";
    TopTableViewTableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:ID];
    if(!cell){
        cell = [[TopTableViewTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor whiteColor];
        [cell initCell];
    }
    return cell;
}
- (void)initCell {
    
    _myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 800) style:UITableViewStylePlain];
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
    [self.contentView addSubview:_myTableView];
    _parentGestureBool = YES;
}
#pragma mark - UITableViewDelegate  UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc]init];
    }
    cell.textLabel.text = @"zzz";
    return cell;
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (!_allowGestureBool && _parentGestureBool) {
        scrollView.contentOffset = CGPointZero;
    }
    CGFloat y =  scrollView.contentOffset.y;
//    NSLog(@"cc:%f",y);
    if (y > 0) {
        //父视图不能滑动  子视图可以滑动
        _parentGestureBool = NO;
        _allowGestureBool = YES;
    }else {
        //父视图可以滑动  子视图不可以滑动
        _parentGestureBool = YES;
        _allowGestureBool = NO;
    }
    
}

- (void)setAllowGestureBool:(BOOL)allowGestureBool {
    _allowGestureBool = allowGestureBool;
}


@end
