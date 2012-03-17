//
//  AppDelegate.h
//  Pharmacon
//
//  Created by Sam Vale on 10/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Credits.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UIViewController *contentViewController;
@property (strong, nonatomic) Credits *creditsViewController;

- (void)showSideMenu;
- (void)hideSideMenu;


@end
