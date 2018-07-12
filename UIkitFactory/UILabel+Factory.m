//
//  UILabel+Factory.m
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import "UILabel+Factory.h"
#import "Factory.h"

@implementation UILabel (Factory)

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

- (Factory *(^)(NSInteger))f_numberOfLines {
    return ^(NSInteger numberOfLines){
        self.numberOfLines = numberOfLines;
        return self.factory;
    };
}

@end
