//
//  ViewController.m
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import "ViewController.h"
#import "UIKitFactory.h"
#import "TestController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view = [UIView new];
    view.factory
    .frame(CGRectMake(100, 100, 50, 50))
    .backgroundColor(UIColor.redColor)
    .cornerRadius(30)
    .masksToBounds(YES)
    .borderWidth(5)
    .borderColor(UIColor.blueColor)
    .superView(self.view);

    UILabel *label = [UILabel new];
    label.factory
    .frame(CGRectMake(100, 200, 100, 50))
    .text(@"这是文本")
    .textAlignment(NSTextAlignmentCenter)
    .textColor(UIColor.whiteColor)
    .font([UIFont systemFontOfSize:15])
    .backgroundColor(UIColor.orangeColor)
    .superView(self.view);

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.factory
    .frame(CGRectMake(100, 300, 100, 50))
    .setTitle(@"这是按钮", UIControlStateNormal)
//    .image([UIImage imageNamed:@"1"])
    .setBackgroundImage([UIImage imageNamed:@"1"], UIControlStateNormal)
    .font([UIFont systemFontOfSize:13])
    .setTitleColor(UIColor.redColor, UIControlStateNormal)
    .backgroundColor(UIColor.blueColor)
    .targetAndAction(self, @selector(buttonClick:), UIControlEventTouchUpInside)
    .superView(self.view);
    

    UIImageView *imageView = [UIImageView new];
    imageView.factory
    .frame(CGRectMake(100, 400, 100, 50))
    .image([UIImage imageNamed:@"1"])
    .superView(self.view);

    
    Factory.typeClass(UILabel.class)
    .frame(CGRectMake(100, 500, 100, 50))
    .text(@"另一个文本")
    .textAlignment(NSTextAlignmentCenter)
    .textColor(UIColor.blackColor)
    .font([UIFont systemFontOfSize:17])
    .backgroundColor(UIColor.yellowColor)
    .superView(self.view);
    
    Factory.buttonType(UIButtonTypeCustom)
    .frame(CGRectMake(100, 600, 100, 50))
    .setTitle(@"另一个按钮", UIControlStateNormal)
    .setBackgroundImage([UIImage imageNamed:@"1"], UIControlStateNormal)
    .font([UIFont systemFontOfSize:13])
    .setTitleColor(UIColor.redColor, UIControlStateNormal)
    .backgroundColor(UIColor.blueColor)
    .targetAndAction(self, @selector(buttonClick:), UIControlEventTouchUpInside)
    .superView(self.view);
}

- (void)buttonClick:(UIButton *)button {
    NSLog(@"点击了按钮");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    TestController *controller = [[TestController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
