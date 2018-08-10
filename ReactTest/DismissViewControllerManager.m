//
//  DismissViewControllerManager.m
//  ReactNativeTest
//
//  Created by fred liu on 2018/7/20.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "DismissViewControllerManager.h"

@implementation DismissViewControllerManager
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(goBack)
{
  [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"dismissViewController" object:nil]];
}
@end
