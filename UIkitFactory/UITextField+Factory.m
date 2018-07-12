//
//  UITextField+Factory.m
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import "UITextField+Factory.h"
#import "Factory.h"

@implementation UITextField (Factory)

- (Factory *(^)(UIFont *))f_font {
    return ^(UIFont *font){
        self.font = font;
        return self.factory;
    };
}

- (Factory *(^)(NSString *))f_text {
    return ^(NSString *text){
        self.text = text;
        return self.factory;
    };
}

- (Factory *(^)(NSAttributedString *))f_attributedText {
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self.factory;
    };
}

- (Factory *(^)(UIColor *))f_textColor {
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self.factory;
    };
}

- (Factory *(^)(NSTextAlignment))f_textAlignment {
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self.factory;
    };
}

- (Factory *(^)(NSString *))f_placeholder {
    return ^(NSString *placeholder){
        self.placeholder = placeholder;
        return self.factory;
    };
}

- (Factory *(^)(id))f_delegate {
    return ^(id delegate){
        self.delegate = delegate;
        return self.factory;
    };
}

@end
