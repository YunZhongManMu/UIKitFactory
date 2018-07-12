//
//  Factory.h
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Factory;
@interface UIView (FactoryHelper)

- (Factory *)factory;

@end

@interface Factory : NSObject

@property (nonatomic, strong) UIView *obj;

/** 类调用, 传入需要初始化的类对象 */
+ (Factory *(^)(Class))typeClass;

/** 专门为了初始化UIButton */
+ (Factory *(^)(UIButtonType))buttonType;

@end

@interface Factory (UIViewHelper)

- (Factory *(^)(UIView *))superView;

- (Factory *(^)(CGRect))frame;
- (Factory *(^)(UIColor *))backgroundColor;
- (Factory *(^)(NSInteger))tag;
- (Factory *(^)(CGRect))bounds;
- (Factory *(^)(CGFloat))alpha;
- (Factory *(^)(CGPoint))center;
- (Factory *(^)(CGAffineTransform))transform;

- (Factory *(^)(BOOL))clipsToBounds;

- (Factory *(^)(CGFloat))cornerRadius;
- (Factory *(^)(BOOL))masksToBounds;
- (Factory *(^)(UIColor *))borderColor;
- (Factory *(^)(CGFloat))borderWidth;

- (Factory *(^)(UIFont *))font;
- (Factory *(^)(NSString *))text;
- (Factory *(^)(NSAttributedString *))attributedText;
- (Factory *(^)(UIColor *))textColor;
- (Factory *(^)(NSTextAlignment))textAlignment;

- (Factory *(^)(NSInteger))numberOfLines;

- (Factory *(^)(NSString *))placeholder;
- (Factory *(^)(id))delegate;

- (Factory *(^)(UIImage *))image;

- (Factory *(^)(NSString *, UIControlState))setTitle;
- (Factory *(^)(UIColor *, UIControlState))setTitleColor;
- (Factory *(^)(UIImage *, UIControlState))setImage;
- (Factory *(^)(UIImage *, UIControlState))setBackgroundImage;
- (Factory *(^)(id, SEL, UIControlEvents))targetAndAction;

@end
