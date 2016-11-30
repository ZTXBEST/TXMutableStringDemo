//
//  UIView+extension.h
//  ProjectFramework
//
//  Created by Glife on 16/3/2.
//  Copyright © 2016年 Glife. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIView (extension)<NSCopying>

@property(nonatomic,assign)CGFloat top;
@property(nonatomic,assign)CGFloat bottom;
@property(nonatomic,assign)CGFloat left;
@property(nonatomic,assign)CGFloat right;

@property(nonatomic,assign)CGPoint leftTop;
@property(nonatomic,assign)CGPoint leftCenter;
@property(nonatomic,assign)CGPoint leftBottom;
@property(nonatomic,assign)CGPoint topCenter;
@property(nonatomic,assign)CGPoint bottomCenter;
@property(nonatomic,assign)CGPoint rightTop;
@property(nonatomic,assign)CGPoint rightCenter;
@property(nonatomic,assign)CGPoint rightBottom;

@property(nonatomic,assign)CGFloat x;
@property(nonatomic,assign)CGFloat y;
@property(nonatomic,assign)CGFloat width;
@property(nonatomic,assign)CGFloat height;
@property(nonatomic,assign)CGSize size;


@end
