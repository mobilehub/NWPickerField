//
//  PickerTestAppDelegate.m
//  PickerTest
//
//  Created by Scott Andrew on 9/25/09.
//  Copyright New Wave Digital Media 2009. All rights reserved.
//
#import "PickerTestAppDelegate.h"
#import "FormViewController.h"

@implementation PickerTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    // Add the tab bar controller's current view as a subview of the window
    [window addSubview:viewController.view];
}


/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
*/

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}

@end

