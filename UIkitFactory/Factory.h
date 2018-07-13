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

@property (nonatomic, weak, readonly) Factory *factory;

@end

@interface Factory : NSObject

@property (nonatomic, strong, readonly) UIView *obj;


/** 类调用, 传入需要初始化的类对象 */
@property (class, nonatomic, strong, readonly) Factory *(^typeClass)(Class);

/** 专门为了初始化UIButton */
@property (class, nonatomic, assign, readonly) Factory *(^buttonType)(UIButtonType);

@end

@interface Factory (UIViewHelper)

@property (nonatomic, strong, readonly) Factory *(^superView)(UIView *);

@property (nonatomic, strong, readonly) Factory *(^frame)(CGRect);
@property (nonatomic, strong, readonly) Factory *(^backgroundColor)(UIColor *);
@property (nonatomic, strong, readonly) Factory *(^tag)(NSInteger);
@property (nonatomic, strong, readonly) Factory *(^bounds)(CGRect);
@property (nonatomic, strong, readonly) Factory *(^alpha)(CGFloat);
@property (nonatomic, strong, readonly) Factory *(^center)(CGPoint);
@property (nonatomic, strong, readonly) Factory *(^transform)(CGAffineTransform);

@property (nonatomic, strong, readonly) Factory *(^clipsToBounds)(BOOL);

@property (nonatomic, strong, readonly) Factory *(^cornerRadius)(CGFloat);
@property (nonatomic, strong, readonly) Factory *(^masksToBounds)(BOOL);
@property (nonatomic, strong, readonly) Factory *(^borderColor)(UIColor *);
@property (nonatomic, strong, readonly) Factory *(^borderWidth)(CGFloat);


@property (nonatomic, strong, readonly) Factory *(^font)(UIFont *);
@property (nonatomic, strong, readonly) Factory *(^text)(NSString *);
@property (nonatomic, strong, readonly) Factory *(^attributedText)(NSAttributedString *);
@property (nonatomic, strong, readonly) Factory *(^textColor)(UIColor *);
@property (nonatomic, strong, readonly) Factory *(^textAlignment)(NSTextAlignment);

@property (nonatomic, strong, readonly) Factory *(^numberOfLines)(NSInteger);

@property (nonatomic, strong, readonly) Factory *(^placeholder)(NSString *);
@property (nonatomic, strong, readonly) Factory *(^delegate)(id);

@property (nonatomic, strong, readonly) Factory *(^image)(UIImage *);


@property (nonatomic, strong, readonly) Factory *(^setTitle)(NSString *, UIControlState);
@property (nonatomic, strong, readonly) Factory *(^setTitleColor)(UIColor *, UIControlState);
@property (nonatomic, strong, readonly) Factory *(^setImage)(UIImage *, UIControlState);
@property (nonatomic, strong, readonly) Factory *(^setBackgroundImage)(UIImage *, UIControlState);
@property (nonatomic, strong, readonly) Factory *(^addTargetAndAction)(id, SEL, UIControlEvents);

@end
