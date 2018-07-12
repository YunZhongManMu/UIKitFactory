
//
//  TestController.m
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import "TestController.h"
#import "UIKitFactory.h"

@interface TestController ()

@end

@implementation TestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
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
}

- (void)dealloc {
    NSLog(@"%s", __func__);
}

@end
