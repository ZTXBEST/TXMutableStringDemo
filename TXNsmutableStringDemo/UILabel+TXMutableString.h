//
//  UILabel+TXMutableString.h
//  TXNsmutableStringDemo
//
//  Created by 赵天旭 on 16/11/30.
//  Copyright © 2016年 ZTX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (TXMutableString)

#pragma mark - 改变字段字体
/**
 改变句中所有字体

 @param textFont 改变的字体
 */
- (void)TX_changeFontWithTextFont:(UIFont *)textFont;

/**
 *  改变句中某些字段的字体
 *
 *  @param textFont 改变的字体
 *  @param text     改变的字段
 */
- (void)TX_changeFontWithTextFont:(UIFont *)textFont changeText:(NSString *)text;

#pragma mark - 改变字段间距

/**
 改变句中所有的间距

 @param space 改变的间距
 */
- (void)TX_changeSpaceWithTextSpace:(CGFloat)space;


/**
 改变句中某些字段的间距

 @param space 改变的间距
 @param text  改变的字段
 */
- (void)TX_changeSpaceWithTextSpace:(CGFloat)space changeText:(NSString *)text;


#pragma mark - 改变行间距
/**
 改变句中所有的行间距

 @param space 改变的间距
 */
- (void)TX_changeLineSpaceWithTextLineSpace:(CGFloat)space;

#pragma mark - 改变段落样式
/**
 改变段落样式

 @param paragraphStyle 段落样式
 */
- (void)TX_changeParagraphStyleWithTextParagraphStyle:(NSMutableParagraphStyle *)paragraphStyle;

#pragma mark - 改变字体颜色

/**
 改变字体颜色

 @param color 字体颜色
 */
- (void)TX_changeColorWithTextColor:(UIColor *)color;

/**
 *  改变句中某些字段的字体颜色
 *
 *  @param color 改变的颜色
 *  @param text  改变的字段
 */
- (void)TX_changeColorWithTextColor:(UIColor *)color changeText:(NSString *)text;

#pragma mark - 改变字段背景颜色

/**
 改变背景颜色

 @param backgroundColor 背景颜色
 */
- (void)TX_changeBackgroundColorWithBackgroundColor:(UIColor *)backgroundColor;

/**
 改变句中某些字段的背景颜色

 @param backgroundColor 改变的背景颜色
 @param text            改变的字段
 */
- (void)TX_changeBackgroundColorWithBackgroundColor:(UIColor *)backgroundColor changeText:(NSString *)text;

#pragma mark - 改变字段连笔 value值为1或者0
/**
 改变字段连笔

 @param ligature 是否连笔，1为连笔，0为不连笔
 */
- (void)TX_changeLigatureWithTextLigature:(NSNumber *)ligature;

/**
 改变句中某些字段的连笔

 @param textLigature 是否连笔，1为连笔，0为不连笔笔
 @param text         改变的字段
 */
- (void)TX_changeLigatureWithTextLigature:(NSNumber *)textLigature changeText:(NSString *)text;

#pragma mark - 改变字的删除线

/**
 改变字的删除线

 @param textStrikethroughStyle 删除线样式
         NSUnderlineStyleNone 不设置删除线
         NSUnderlineStyleSingle 设置删除线为细单实线
         NSUnderlineStyleThick 设置删除线为粗单实线
         NSUnderlineStyleDouble 设置删除线为细双实线
 */
- (void)TX_changeStrikethroughStyleWithTextStrikethroughStyle:(NSNumber *)textStrikethroughStyle;


/**
 改变句中某些字段的删除线

 @param textStrikethroughStyle 删除线样式
 @param text                   改变的字段
 */
- (void)TX_changeStrikethroughStyleWithTextStrikethroughStyle:(NSNumber *)textStrikethroughStyle changeText:(NSString *)text;

#pragma mark - 改变字的删除线颜色
/**
 改变删除线颜色

 @param textStrikethroughColor 删除线颜色
 */
- (void)TX_changeStrikethroughColorWithTextStrikethroughColor:(UIColor *)textStrikethroughColor;

/**
 改变某些字段删除线颜色

 @param textStrikethroughColor 删除线颜色
 @param text                   改变的字段
 */
- (void)TX_changeStrikethroughColorWithTextStrikethroughColor:(UIColor *)textStrikethroughColor changeText:(NSString *)text;

#pragma mark - 改变字的下滑线

/**
 改变字的下滑线

 @param textUnderlineStyle 下划线样式
         NSUnderlineStyleNone 不设置下滑线
         NSUnderlineStyleSingle 设置下滑线为细单实线
         NSUnderlineStyleThick 设置下滑线为粗单实线
         NSUnderlineStyleDouble 设置下滑线为细双实线
 */
- (void)TX_changeUnderlineStyleWithTextUnderlineStyle:(NSNumber *)textUnderlineStyle;


/**
 改变句中某些字段的下滑线

 @param textUnderlineStyle 下划线样式
 @param text               改变的字段
 */
- (void)TX_changeUnderlineStyleWithTextUnderlineStyle:(NSNumber *)textUnderlineStyle changeText:(NSString *)text;

#pragma mark - 改变字的下划线颜色

/**
 改变字的下滑线颜色

 @param textUnderlineColor 下划线颜色
 */
- (void)TX_changeUnderlineColorWithTextUnderlineColor:(UIColor *)textUnderlineColor;

/**
 改变居中某些字段的下划线颜色

 @param textUnderlineColor 下划线颜色
 @param text               改变的字段
 */
- (void)TX_changeUnderlineColorWithTextUnderlineColor:(UIColor *)textUnderlineColor changeText:(NSString *)text;

#pragma mark - 改变字的描边

/**
 改变字的描边

 @param textStrokeWidth 描边宽度
 */
- (void)TX_changeStrokeWidthWithTextStrikethroughWidth:(NSNumber *)textStrokeWidth;

/**
 改变句中某些字段的描边

 @param textStrokeWidth 描边宽度
 @param text            改变的字段
 */
- (void)TX_changeStrokeWidthWithTextStrikethroughWidth:(NSNumber *)textStrokeWidth changeText:(NSString *)text;

#pragma mark - 改变字的描边颜色

/**
 改变字的描边颜色

 @param textStrokeColor 描边颜色
 */
- (void)TX_changeStrokeColorWithTextStrikethroughColor:(UIColor *)textStrokeColor;

/**
 改变句中某些字段的描边颜色
 
 @param textStrokeColor 描边颜色
 @param text            改变的字段
 */
- (void)TX_changeStrokeColorWithTextStrikethroughColor:(UIColor *)textStrokeColor changeText:(NSString *)text;

#pragma mark - 改变字的阴影

/**
 改变字的阴影

 @param textShadow 改变的阴影
 */
- (void)TX_changeShadowWithTextShadow:(NSShadow *)textShadow;

/**
 改变句中某些字段的阴影

 @param textShadow 改变的阴影
 @param text       改变的字段
 */
- (void)TX_changeShadowWithTextShadow:(NSShadow *)textShadow changeText:(NSString *)text;

#pragma mark - 添加链接
- (void)TX_changeLinkWithTextLink:(NSString *)linkURL changeText:(NSString *)text;


#pragma mark - 改变字的基准线偏移 value>0坐标往上偏移 value<0坐标往下偏移
/**
 改变字的基准线偏移

 @param textBaselineOffset 改变的偏移大小
 */
- (void)TX_changeBaselineOffsetWithTextBaselineOffset:(NSNumber *)textBaselineOffset NS_AVAILABLE(10_0, 7_0);

/**
 改变句中某些字段的基准线偏移

 @param textBaselineOffset 改变的偏移大小
 @param text               改变的字段
 */
- (void)TX_changeBaselineOffsetWithTextBaselineOffset:(NSNumber *)textBaselineOffset changeText:(NSString *)text NS_AVAILABLE(10_0, 7_0);



@end
