A simple iPhone project (iOS5, ARC) to demonstrate a forced orientation change in conjunction with UITabBarController. It's based on Apple's template project "Tabbed Application" and documents the needed changes through the Git commit messages.

First, the approach uses a sub class `IndividuallyRotatingTabBarController` to override the default behavior that otherview would derive a common orientation for all controllers

    -(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
        return [self.selectedViewController shouldAutorotateToInterfaceOrientation:toInterfaceOrientation];
    }

Second, the TabBarController's delegate (here: `AppDelegate`) forces UIKit to ask for the orientation every time another tab has been selected. This has been done by presenting and dismissing a fake modal view controller (this hasn't been done directly by `IndividuallyRotatingTabBarController` since the calling event handler `_tabBarItemClicked:` is no public API).

    - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
    {
        // force UIKit to ask for shouldRotateToInterfaceOrientation again
        UIViewController *vc = [[UIViewController alloc]init];
        [viewController presentModalViewController:vc animated:NO];
        [viewController dismissModalViewControllerAnimated:NO];
    }

Have fun!