//
//  UITextView+Factory.h
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Factory;
@interface UITextView (Factory)

- (Factory *(^)(UIFont *))f_font;
- (Factory *(^)(NSString *))f_text;
- (Factory *(^)(NSAttributedString *))f_attributedText;
- (Factory *(^)(UIColor *))f_textColor;
- (Factory *(^)(NSTextAlignment))f_textAlignment;

- (Factory *(^)(id))f_delegate;

@end
