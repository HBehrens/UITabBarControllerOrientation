//
//  IndividuallyRotatingTabBarController.m
//  TabBarControllerRotation
//
//  Created by Heiko Behrens on 01.12.11.
//  Copyright (c) 2011 BeamApp. All rights reserved.
//

#import "IndividuallyRotatingTabBarController.h"

@implementation IndividuallyRotatingTabBarController

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return [self.selectedViewController shouldAutorotateToInterfaceOrientation:toInterfaceOrientation];
}

@end
