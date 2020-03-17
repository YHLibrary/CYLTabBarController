//
//  UIButton+HintStyle.h
//  xc_app_rn
//
//  Created by tongleiming on 2019/3/22.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 未读消息，购物车等角标
#define BadgeMargin (-1)

// 导航栏铃铛frame
#define XCNavBarBellFrame CGRectMake(0,0,20,44)

@interface UIButton (HintStyle)

//设置导航栏消息角标数字提示样式
- (void)setHintBadgeStyle;
//设置霸屏模式下d导航栏消息角标数字提示样式
- (void)setFullScreenHintBadgeStyle;
//设置按钮角标数字
- (void)configWithUnreadMsgCount:(NSInteger)unreadMsgCount;

//设置系统导航栏中消息角标数字提示样式
- (void)configNavWithUnreadMsgCount:(NSInteger)unreadMsgCount;
@end

NS_ASSUME_NONNULL_END
