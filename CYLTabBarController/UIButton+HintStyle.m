//
//  UIButton+HintStyle.m
//  xc_app_rn
//
//  Created by tongleiming on 2019/3/22.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "UIButton+HintStyle.h"
#import "CYLBadgeProtocol.h"
#import "UIView+CYLBadgeExtention.h"

//角标颜色
#define BADGE_COLOR_THEME ([UIColor colorWithRed:242/255.0f green:86/255.0f blue:160/255.0f alpha:1])

@implementation UIButton (HintStyle)

- (void)setHintBadgeStyle {
    [self cyl_setBadgeRadius:6.5];
    [self cyl_setBadgeBackgroundColor:BADGE_COLOR_THEME];
    [self cyl_setBadgeTextColor:[UIColor whiteColor]];
    [self cyl_setBadgeFont:[UIFont systemFontOfSize:11]];
    [self cyl_setBadgeMargin:BadgeMargin];
}

- (void)setFullScreenHintBadgeStyle {
    [self cyl_setBadgeRadius:6.5];
    [self cyl_setBadgeBackgroundColor:[UIColor whiteColor]];
    [self cyl_setBadgeTextColor:BADGE_COLOR_THEME];
    [self cyl_setBadgeFont:[UIFont systemFontOfSize:11]];
    [self cyl_setBadgeMargin:BadgeMargin];
}

- (void)set99MoreCenter {
    [self cyl_setBadgeCenterOffset:CGPointMake(-19, 10)];
}

- (void)set99LessCenter {
    [self cyl_setBadgeCenterOffset:CGPointMake(-15, 10)];
}

- (void)configWithUnreadMsgCount:(NSInteger)unreadMsgCount {
    if (unreadMsgCount >= 1) {
        if (unreadMsgCount > 99) {
            [self set99MoreCenter];
        } else {
            [self set99LessCenter];
        }
        [self cyl_showBadgeValue:[NSString stringWithFormat:@"%ld", (long)unreadMsgCount]];
    } else {
        [self cyl_clearBadge];
    }
}

/*
 *  首页铃铛按钮宽高为41
 *  根据首页铃铛角标推算其他导航栏角标位置公式：
 *  41 + (-15) + å - 41/2 = btnWidth + offsetX + å - btnWidth/2
 *  (10) - 41/2 = offsetY - btnHeight/2
 *  其中：-15是角标小于99时的X轴偏移，10是角标小于99时的Y轴偏移
 */

- (void)setNavHintBadge99MoreCenter {
    [self cyl_setBadgeCenterOffset:CGPointMake(-8.5, 11.5)];
}

- (void)setNavHintBadge99LessCenter {
    [self cyl_setBadgeCenterOffset:CGPointMake(-4.5, 11.5)];
}

- (void)configNavWithUnreadMsgCount:(NSInteger)unreadMsgCount {
    if (unreadMsgCount >= 1) {
        if (unreadMsgCount > 99) {
            [self setNavHintBadge99MoreCenter];
        } else {
            [self setNavHintBadge99LessCenter];
        }
        [self cyl_showBadgeValue:[NSString stringWithFormat:@"%ld", (long)unreadMsgCount]];
    } else {
        [self cyl_clearBadge];
    }
}

@end
