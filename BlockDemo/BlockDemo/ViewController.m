//
//  ViewController.m
//  BlockDemo
//
//  Created by 朱标 on 2018/6/12.
//  Copyright © 2018年 zhubiao. All rights reserved.
//

#import "ViewController.h"
#import "TextView.h"
#import "TextViewTop.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //12333
    TextView *textView = [[TextView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    textView.backgroundColor = [UIColor redColor];
    [self.view addSubview:textView];
    UILabel *a ;
    //最顶层视图
    TextViewTop *topView = [[TextViewTop alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    topView.backgroundColor = [UIColor blueColor];
    [textView addSubview:topView];
    //添加私有方法
    
    
}


- (IBAction)button1Click:(id)sender {
    UIResponder *res = sender;
    
    while (res) {
        NSLog(@"*************************************\n%@",res);
        res = [res nextResponder];
    }
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"VC");
}


@end
@implementation UIView(text)
//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    return [self superview];
//}
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    return YES;
//}

@end
