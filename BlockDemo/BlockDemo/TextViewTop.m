//
//  TextViewTop.m
//  BlockDemo
//
//  Created by 朱标 on 2018/6/27.
//  Copyright © 2018年 zhubiao. All rights reserved.
//

#import "TextViewTop.h"

@implementation TextViewTop

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"topView");
}
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    return YES;
}
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    return [self superview];
}
@end
