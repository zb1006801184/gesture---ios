//
//  TopTableViewTableViewCell.h
//  BlockDemo
//
//  Created by 朱标 on 2018/7/2.
//  Copyright © 2018年 zhubiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopTableViewTableViewCell : UITableViewCell
+(instancetype)cellWithtableView:(UITableView *)tableview;
@property (nonatomic,assign) BOOL allowGestureBool; //内容是否可以滑动
@property (nonatomic,assign) BOOL parentGestureBool; //父视图是否可以滑动
@end
