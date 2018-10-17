//
//  AppDelegate.m
//  BlockDemo
//
//  Created by 朱标 on 2018/6/12.
//  Copyright © 2018年 zhubiao. All rights reserved.
//

#import "AppDelegate.h"
#import "GestureViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

typedef void (^blk_t)(int);

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.11
    //BLOCK
//   __block int a = 1;
//    self.block = ^{
//        NSLog(@"123");
//        a = a + 1;
//    };
//    NSLog(@"%@",self.block);
//
//
//    blk_t blk = ^(int count) {
//        a++;
//    };
//    NSLog(@"%@",blk);
//
//    int base = 100;
//    long (^stackBlock) (int, int) = ^ long (int a, int b) {
//        return base +a + b;
//    };
//    NSLog(@"%@",stackBlock);
//
//    dispatch_block_t blockA = [self testStackBlock];
//    blockA(); //会crash
//    [self block:^(NSString *str) {
//
//    }];
    //
    _window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = [[GestureViewController alloc]init];
    [self.window makeKeyWindow];
    return YES;
}

- (dispatch_block_t)testStackBlock {
    __block NSInteger i = 0;
    dispatch_block_t block = ^() {
        NSLog(@"%ld", ++i);
    };
    return block;
}

- (void)block:(void(^)(NSString *str))block {
    block(@"1");
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    NSLog(@"app++ %@",event);
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
@implementation UIView(text)
//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    return nil;
//}
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    return NO;
//}

@end

