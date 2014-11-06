//
//  AKETooltip.h
//  AKETooltip
//
//  Created by Eren Kabakci on 06/11/14.
//  Copyright (c) 2014 Akeara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKETooltip : UIView

@property (assign, nonatomic, getter=isShadowHidden) BOOL hideShadow;
@property (strong, nonatomic) UIColor *arrowColor;
@property (strong, nonatomic) UIColor *borderColor;

- (id)initWithContentView:(UIView *)contentView sourceRect:(CGRect)sourceRect parentWindow:(UIWindow *)parentWindow;

- (void)show;
- (void)dismiss;

@end
