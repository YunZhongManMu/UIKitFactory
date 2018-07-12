//
//  UIButton+Factory.h
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Factory;
@interface UIButton (Factory)

- (Factory *(^)(UIFont *))f_font;
- (Factory *(^)(NSString *, UIControlState))f_setTitle;
- (Factory *(^)(UIColor *, UIControlState))f_setTitleColor;
- (Factory *(^)(UIImage *, UIControlState))f_setImage;
- (Factory *(^)(UIImage *, UIControlState))f_setBackgroundImage;
- (Factory *(^)(id, SEL, UIControlEvents))f_targetAndAction;

@end
