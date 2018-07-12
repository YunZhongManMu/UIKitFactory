//
//  UIButton+Factory.m
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import "UIButton+Factory.h"
#import "Factory.h"

@implementation UIButton (Factory)

- (Factory *(^)(UIFont *))f_font {
    return ^(UIFont *font){
        self.titleLabel.font = font;
        return self.factory;
    };
}

- (Factory *(^)(NSString *, UIControlState))f_setTitle {
    return ^(NSString *title, UIControlState state){
        [self setTitle:title forState:state];
        return self.factory;
    };
}

- (Factory *(^)(UIColor *, UIControlState))f_setTitleColor {
    return ^(UIColor *titleColor, UIControlState state){
        [self setTitleColor:titleColor forState:state];
        return self.factory;
    };
}

- (Factory *(^)(UIImage *, UIControlState))f_setImage {
    return ^(UIImage *image, UIControlState state){
        [self setImage:image forState:state];
        return self.factory;
    };
}

- (Factory *(^)(UIImage *, UIControlState))f_setBackgroundImage {
    return ^(UIImage *backgroundImage, UIControlState state){
        [self setBackgroundImage:backgroundImage forState:state];
        return self.factory;
    };
}

- (Factory *(^)(id, SEL, UIControlEvents))f_targetAndAction {
    return ^(id target, SEL action, UIControlEvents events){
        [self addTarget:target action:action forControlEvents:events];
        return self.factory;
    };
}


@end
