//
//  UIView+Factory.h
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Factory;
@interface UIView (Factory)

- (Factory *(^)(UIView *))f_superView;

- (Factory *(^)(CGRect))f_frame;
- (Factory *(^)(UIColor *))f_backgroundColor;
- (Factory *(^)(NSInteger))f_tag;
- (Factory *(^)(CGRect))f_bounds;
- (Factory *(^)(CGFloat))f_alpha;
- (Factory *(^)(CGPoint))f_center;
- (Factory *(^)(CGAffineTransform))f_transform;

- (Factory *(^)(BOOL))f_clipsToBounds;

- (Factory *(^)(CGFloat))f_cornerRadius;
- (Factory *(^)(BOOL))f_masksToBounds;
- (Factory *(^)(UIColor *))f_borderColor;
- (Factory *(^)(CGFloat))f_borderWidth;

@end


