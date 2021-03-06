//
//  NavigationController.m
//  UGrokIt
//
//  Created by Anthony Requist on 1/22/13.
//  Copyright (c) 2013 Anthony Requist. All rights reserved.
//

#import "NavigationController.h"
#import "UgiUiUtil.h"

///////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Private
///////////////////////////////////////////////////////////////////////////////////////

@interface NavigationController ()

@end

///////////////////////////////////////////////////////////////////////////////////////
#pragma mark - implementation
///////////////////////////////////////////////////////////////////////////////////////

@implementation NavigationController

///////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Lifecycle
///////////////////////////////////////////////////////////////////////////////////////

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
  if (self.viewControllers.count > 0) {
    UIViewController *vc = self.viewControllers[self.viewControllers.count-1];
    return [vc supportedInterfaceOrientations];
  }
  return [[Ugi singleton] supportedInterfaceOrientationsWithAllowRotationOnTablet:YES];
}

@end
