//
//  FirstViewController.h
//  PickerTest
//
//  Created by Scott Andrew on 9/25/09.
//  Copyright New Wave Digital Media 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NWPickerField;

@interface FormViewController : UIViewController {
	NSArray* states;
	NSArray* cars;
    
    NWPickerField* carsField;
}

@property(nonatomic, retain) IBOutlet NWPickerField* carsField;

@end
