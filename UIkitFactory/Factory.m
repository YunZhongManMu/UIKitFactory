//
//  Factory.m
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import "Factory.h"
#import <objc/runtime.h>
#import "UIView+Factory.h"
#import "UILabel+Factory.h"
#import "UITextField+Factory.h"
#import "UITextView+Factory.h"
#import "UIButton+Factory.h"
#import "UIImageView+Factory.h"

@interface Factory ()

@end

@implementation UIView (FactoryHelper)

- (Factory *)factory {
    Factory *factory = objc_getAssociatedObject(self, _cmd);
    if (!factory) {
        factory = [[Factory alloc] init];
        factory.obj = self;
        objc_setAssociatedObject(self, @selector(factory), factory, OBJC_ASSOCIATION_ASSIGN);
    }
    return factory;
}

@end

@implementation Factory

+ (Factory *(^)(Class))typeClass {
    return ^(Class cls){
        NSAssert([cls isSubclassOfClass:[UIView class]], @"初始化只用于UIView的子类");
        
        UIView *obj = [cls new];
        return obj.factory;
    };
}

+ (Factory *(^)(UIButtonType))buttonType {
    return ^(UIButtonType type){
        UIButton *button = [UIButton buttonWithType:type];
        return button.factory;
    };
}

//- (void)dealloc {
//    NSLog(@"%s", __func__);
//}

@end

@implementation Factory (UIViewHelper)

- (Factory *(^)(UIView *))superView {
    return self.obj.f_superView;
}

- (Factory *(^)(CGRect))frame {
    return self.obj.f_frame;
}

- (Factory *(^)(UIColor *))backgroundColor {
    return self.obj.f_backgroundColor;
}

- (Factory *(^)(NSInteger))tag {
    return self.obj.f_tag;
}

- (Factory *(^)(CGRect))bounds {
    return self.obj.f_bounds;
}

- (Factory *(^)(CGFloat))alpha {
    return self.obj.f_alpha;
}

- (Factory *(^)(CGPoint))center {
    return self.obj.f_center;
}

- (Factory *(^)(CGAffineTransform))transform {
    return self.obj.f_transform;
}

- (Factory *(^)(BOOL))clipsToBounds {
    return self.obj.f_clipsToBounds;
}

- (Factory *(^)(CGFloat))cornerRadius {
    return self.obj.f_cornerRadius;
}

- (Factory *(^)(BOOL))masksToBounds {
    return self.obj.f_masksToBounds;
}

- (Factory *(^)(UIColor *))borderColor {
    return self.obj.f_borderColor;
}

- (Factory *(^)(CGFloat))borderWidth {
    return self.obj.f_borderWidth;
}

- (Factory *(^)(UIFont *))font {
    if ([self.obj isKindOfClass:[UILabel class]]) {
        
        return ((UILabel *)self.obj).f_font;
        
    } else if ([self.obj isKindOfClass:[UITextField class]]) {
        
        return ((UITextField *)self.obj).f_font;
        
    } else if ([self.obj isKindOfClass:[UITextView class]]) {
        
        return ((UITextView *)self.obj).f_font;
        
    } else if ([self.obj isKindOfClass:[UIButton class]]) {
        
        return ((UIButton *)self.obj).f_font;
        
    } else {
        return ^(UIFont *font){
            return self;
        };
    }
}

- (Factory *(^)(NSString *))text {
    if ([self.obj isKindOfClass:[UILabel class]]) {
        
        return ((UILabel *)self.obj).f_text;
        
    } else if ([self.obj isKindOfClass:[UITextField class]]) {
        
        return ((UITextField *)self.obj).f_text;
        
    } else if ([self.obj isKindOfClass:[UITextView class]]) {
        
        return ((UITextView *)self.obj).f_text;
        
    } else {
        return ^(NSString *text){
            return self;
        };
    }
}

- (Factory *(^)(NSAttributedString *))attributedText {
    if ([self.obj isKindOfClass:[UILabel class]]) {
        
        return ((UILabel *)self.obj).f_attributedText;
        
    } else if ([self.obj isKindOfClass:[UITextField class]]) {
        
        return ((UITextField *)self.obj).f_attributedText;
        
    } else if ([self.obj isKindOfClass:[UITextView class]]) {
        
        return ((UITextView *)self.obj).f_attributedText;
        
    } else {
        return ^(NSAttributedString *attributedText){
            return self;
        };
    }
}

- (Factory *(^)(UIColor *))textColor {
    if ([self.obj isKindOfClass:[UILabel class]]) {
        
        return ((UILabel *)self.obj).f_textColor;
        
    } else if ([self.obj isKindOfClass:[UITextField class]]) {
        
        return ((UITextField *)self.obj).f_textColor;
        
    } else if ([self.obj isKindOfClass:[UITextView class]]) {
        
        return ((UITextView *)self.obj).f_textColor;
        
    } else {
        return ^(UIColor *textColor){
            return self;
        };
    }
}

- (Factory *(^)(NSTextAlignment))textAlignment {
    if ([self.obj isKindOfClass:[UILabel class]]) {
        
        return ((UILabel *)self.obj).f_textAlignment;
        
    } else if ([self.obj isKindOfClass:[UITextField class]]) {
        
        return ((UITextField *)self.obj).f_textAlignment;
        
    } else if ([self.obj isKindOfClass:[UITextView class]]) {
        
        return ((UITextView *)self.obj).f_textAlignment;
        
    } else {
        return ^(NSTextAlignment textAlignment){
            return self;
        };
    }
}

- (Factory *(^)(NSInteger))numberOfLines {
    if ([self.obj isKindOfClass:[UILabel class]]) {
        
        return ((UILabel *)self.obj).f_numberOfLines;
        
    } else {
        return ^(NSInteger numberOfLines){
            return self;
        };
    }
}

- (Factory *(^)(NSString *))placeholder {
    if ([self.obj isKindOfClass:[UITextField class]]) {
        
        return ((UITextField *)self.obj).f_placeholder;
        
    } else {
        return ^(NSString *placeholder){
            return self;
        };
    }
}

- (Factory *(^)(id))delegate {
    if ([self.obj isKindOfClass:[UITextField class]]) {
        
        return ((UITextField *)self.obj).f_delegate;
        
    } else if ([self.obj isKindOfClass:[UITextView class]]) {
        
        return ((UITextView *)self.obj).f_delegate;
        
    } else {
        return ^(id delegate){
            return self;
        };
    }
}

- (Factory *(^)(UIImage *))image {
    
    if ([self.obj isKindOfClass:[UIImageView class]]) {
        
        return ((UIImageView *)self.obj).f_image;
        
    } else if ([self.obj isKindOfClass:[UIButton class]]) {
        
        return ^(UIImage *image){
            return ((UIButton *)self.obj).f_setImage(image, UIControlStateNormal);
        };
        
    } else {
        return ^(UIImage *image){
            return self;
        };
    }
}

- (Factory *(^)(NSString *, UIControlState))setTitle {
    if ([self.obj isKindOfClass:[UIButton class]]) {
        
        return ((UIButton *)self.obj).f_setTitle;
        
    } else {
        return ^(NSString *title, UIControlState state){
            return self;
        };
    }
}

- (Factory *(^)(UIColor *, UIControlState))setTitleColor {
    if ([self.obj isKindOfClass:[UIButton class]]) {
        
        return ((UIButton *)self.obj).f_setTitleColor;
        
    } else {
        return ^(UIColor *titleColor, UIControlState state){
            return self;
        };
    }
}

- (Factory *(^)(UIImage *, UIControlState))setImage {
    if ([self.obj isKindOfClass:[UIButton class]]) {
        
        return ((UIButton *)self.obj).f_setImage;
        
    } else {
        return ^(UIImage *image, UIControlState state){
            return self;
        };
    }
}

- (Factory *(^)(UIImage *, UIControlState))setBackgroundImage {
    if ([self.obj isKindOfClass:[UIButton class]]) {
        
        return ((UIButton *)self.obj).f_setBackgroundImage;
        
    } else {
        return ^(UIImage *backgroundImage, UIControlState state){
            return self;
        };
    }
}

- (Factory *(^)(id, SEL, UIControlEvents))targetAndAction {
    if ([self.obj isKindOfClass:[UIButton class]]) {
        
        return ((UIButton *)self.obj).f_targetAndAction;
        
    } else {
        return ^(id obj, SEL action, UIControlEvents events){
            return self;
        };
    }
}

@end
