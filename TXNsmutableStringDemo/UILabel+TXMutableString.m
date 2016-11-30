//
//  UILabel+TXMutableString.m
//  TXNsmutableStringDemo
//
//  Created by 赵天旭 on 16/11/30.
//  Copyright © 2016年 ZTX. All rights reserved.
//

#import "UILabel+TXMutableString.h"
#import <CoreText/CoreText.h>


@implementation UILabel (TXMutableString)

#pragma mark - 改变字段字体
- (void)TX_changeFontWithTextFont:(UIFont *)textFont {
    [self TX_changeFontWithTextFont:textFont changeText:self.text];
}

- (void)TX_changeFontWithTextFont:(UIFont *)textFont changeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSCaseInsensitiveSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:NSFontAttributeName value:textFont range:range];
    }
    self.attributedText = attributedString;
}

#pragma mark - 改变字段间距
- (void)TX_changeSpaceWithTextSpace:(CGFloat)space {
    [self TX_changeSpaceWithTextSpace:space changeText:self.text];
}

- (void)TX_changeSpaceWithTextSpace:(CGFloat)space changeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSCaseInsensitiveSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:(id)kCTKernAttributeName value:@(space) range:range];
    }
    self.attributedText = attributedString;
}

#pragma mark - 改变行间距
- (void)TX_changeLineSpaceWithTextLineSpace:(CGFloat)space {
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [self TX_changeParagraphStyleWithTextParagraphStyle:paragraphStyle];
}

#pragma mark - 改变段落样式
- (void)TX_changeParagraphStyleWithTextParagraphStyle:(NSMutableParagraphStyle *)paragraphStyle {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.text length])];
    self.attributedText = attributedString;
}

#pragma mark - 改变字体颜色
- (void)TX_changeColorWithTextColor:(UIColor *)color {
    [self TX_changeColorWithTextColor:color changeText:self.text];
}

- (void)TX_changeColorWithTextColor:(UIColor *)color changeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSCaseInsensitiveSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:NSForegroundColorAttributeName value:color range:range];
    }
    self.attributedText = attributedString;
}
#pragma mark - 改变背景颜色
- (void)TX_changeBackgroundColorWithBackgroundColor:(UIColor *)backgroundColor {
    [self TX_changeBackgroundColorWithBackgroundColor:backgroundColor changeText:self.text];
}

- (void)TX_changeBackgroundColorWithBackgroundColor:(UIColor *)backgroundColor changeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSCaseInsensitiveSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:NSBackgroundColorAttributeName value:backgroundColor range:range];
    }
    self.attributedText = attributedString;
}
#pragma mark - 改变字段连笔
- (void)TX_changeLigatureWithTextLigature:(NSNumber *)ligature {
    [self TX_changeLigatureWithTextLigature:ligature changeText:self.text];
}

- (void)TX_changeLigatureWithTextLigature:(NSNumber *)textLigature changeText:(NSString *)text{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:NSLigatureAttributeName value:textLigature range:range];
    }
    self.attributedText = attributedString;
}

#pragma mark - 改变字的删除线
- (void)TX_changeStrikethroughStyleWithTextStrikethroughStyle:(NSNumber *)textStrikethroughStyle {
    [self TX_changeStrikethroughStyleWithTextStrikethroughStyle:textStrikethroughStyle changeText:self.text];
}

- (void)TX_changeStrikethroughStyleWithTextStrikethroughStyle:(NSNumber *)textStrikethroughStyle changeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:NSStrikethroughStyleAttributeName value:textStrikethroughStyle range:range];
    }
    self.attributedText = attributedString;
}

#pragma mark - 改变字的删除线颜色
- (void)TX_changeStrikethroughColorWithTextStrikethroughColor:(UIColor *)textStrikethroughColor {
    [self TX_changeStrikethroughColorWithTextStrikethroughColor:textStrikethroughColor changeText:self.text];
}
- (void)TX_changeStrikethroughColorWithTextStrikethroughColor:(UIColor *)textStrikethroughColor changeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:NSStrikethroughColorAttributeName value:textStrikethroughColor range:range];
    }
    self.attributedText = attributedString;
}
#pragma mark - 改变字的下划线
- (void)TX_changeUnderlineStyleWithTextUnderlineStyle:(NSNumber *)textUnderlineStyle {
    [self TX_changeUnderlineStyleWithTextUnderlineStyle:textUnderlineStyle changeText:self.text];
}
- (void)TX_changeUnderlineStyleWithTextUnderlineStyle:(NSNumber *)textUnderlineStyle changeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:NSUnderlineStyleAttributeName value:textUnderlineStyle range:range];
    }
    self.attributedText = attributedString;
}

#pragma mark - 改变字的下划线颜色
- (void)TX_changeUnderlineColorWithTextUnderlineColor:(UIColor *)textUnderlineColor {
    [self TX_changeUnderlineColorWithTextUnderlineColor:textUnderlineColor changeText:self.text];
}

- (void)TX_changeUnderlineColorWithTextUnderlineColor:(UIColor *)textUnderlineColor changeText:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSRange range = [self.text rangeOfString:text options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [attributedString addAttribute:NSUnderlineColorAttributeName value:textUnderlineColor range:range];
    }
    self.attributedText = attributedString;
}


@end
