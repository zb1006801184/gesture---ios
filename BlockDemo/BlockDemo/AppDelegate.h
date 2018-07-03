//
//  AppDelegate.h
//  BlockDemo
//
//  Created by 朱标 on 2018/6/12.
//  Copyright © 2018年 zhubiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, copy) void (^block)(void);

@end

@interface UIView(text)

@end
