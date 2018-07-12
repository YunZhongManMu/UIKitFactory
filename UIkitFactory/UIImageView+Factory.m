//
//  UIImageView+Factory.m
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import "UIImageView+Factory.h"
#import "Factory.h"

@implementation UIImageView (Factory)

- (Factory *(^)(UIImage *))f_image {
    return ^(UIImage *image){
        self.image = image;
        return self.factory;
    };
}

@end
