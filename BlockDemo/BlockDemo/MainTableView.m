//
//  MainTableView.m
//  BlockDemo
//
//  Created by 朱标 on 2018/7/2.
//  Copyright © 2018年 zhubiao. All rights reserved.
//

#import "MainTableView.h"

@implementation MainTableView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.panGestureRecognizer.cancelsTouchesInView = YES;
    }
    return self;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
