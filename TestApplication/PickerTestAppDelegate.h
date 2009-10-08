//
//  PickerTestAppDelegate.h
//  PickerTest
//
//  Created by Scott Andrew on 9/25/09.
//  Copyright New Wave Digital Media 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FormViewController;

@interface PickerTestAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    FormViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FormViewController *viewController;

@end
