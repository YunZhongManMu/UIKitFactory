//
//  UIImageView+Factory.h
//  UIKitFactoryDemo
//
//  Created by Shaun on 2018/7/11.
//  Copyright © 2018年 Shaun. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Factory;
@interface UIImageView (Factory)

- (Factory *(^)(UIImage *))f_image;

@end
