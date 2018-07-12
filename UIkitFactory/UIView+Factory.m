//
//  UIView+Factory.m
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import "UIView+Factory.h"
#import "Factory.h"

@implementation UIView (Factory)

- (Factory *(^)(UIView *))f_superView {
    return ^(UIView *superView){
        [superView addSubview:self];
        return self.factory;
    };
}

- (Factory *(^)(CGRect))f_frame {
    return ^(CGRect frame){
        self.frame = frame;
        return self.factory;
    };
}

- (Factory *(^)(UIColor *))f_backgroundColor {
    return ^(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self.factory;
    };
}

- (Factory *(^)(NSInteger))f_tag {
    return ^(NSInteger tag){
        self.tag = tag;
        return self.factory;
    };
}

- (Factory *(^)(CGRect))f_bounds {
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self.factory;
    };
}

- (Factory *(^)(CGFloat))f_alpha {
    return ^(CGFloat alpha){
        self.alpha = alpha;
        return self.factory;
    };
}

- (Factory *(^)(CGPoint))f_center {
    return ^(CGPoint center){
        self.center = center;
        return self.factory;
    };
}

- (Factory *(^)(CGAffineTransform))f_transform {
    return ^(CGAffineTransform transform){
        self.transform = transform;
        return self.factory;
    };
}

- (Factory *(^)(BOOL))f_clipsToBounds {
    return ^(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self.factory;
    };
}

- (Factory *(^)(CGFloat))f_cornerRadius {
    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        return self.factory;
    };
}

- (Factory *(^)(BOOL))f_masksToBounds {
    return ^(BOOL masksToBounds){
        self.layer.masksToBounds = masksToBounds;
        return self.factory;
    };
}

- (Factory *(^)(UIColor *))f_borderColor {
    return ^(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self.factory;
    };
}

- (Factory *(^)(CGFloat))f_borderWidth {
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self.factory;
    };
}

@end
