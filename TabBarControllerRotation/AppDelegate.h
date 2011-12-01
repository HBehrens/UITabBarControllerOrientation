//
//  AppDelegate.h
//  TabBarControllerRotation
//
//  Created by Heiko Behrens on 01.12.11.
//  Copyright (c) 2011 BeamApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
