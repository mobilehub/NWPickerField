//
//  FirstViewController.m
//  PickerTest
//
//  Created by Scott Andrew on 9/25/09.
//  Copyright New Wave Digital Media 2009. All rights reserved.
//

#import "FormViewController.h"
#import "NWPickerField.h"

#define STATE_FIELD 2000
#define CAR_FIELD 2001

@implementation FormViewController

@synthesize carsField;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
    NSString* carsPlist = [[NSBundle mainBundle] pathForResource:@"Cars" ofType:@"plist"];
    NSString* statesPlist = [[NSBundle mainBundle] pathForResource:@"States" ofType:@"plist"];
    
    cars = [[NSArray alloc] initWithContentsOfFile:carsPlist];
    states = [[NSArray alloc] initWithContentsOfFile:statesPlist];
		
	carsField.formatString = @"%@ %@ %@";
	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [cars release];
    [states release];
    
    [super dealloc];
}

#pragma mark -
#pragma mark NWPickerField
#pragma mark -

-(NSInteger) numberOfComponentsInPickerField:(NWPickerField*)pickerField {
	switch(pickerField.tag) {
        case STATE_FIELD:
            return 1;
            break;
            
        case CAR_FIELD:
            return 3;
            break;
            
        default:
            return -1;
    }
    
}


-(NSInteger) pickerField:(NWPickerField*)pickerField numberOfRowsInComponent:(NSInteger)component{
	switch(pickerField.tag) {
        case STATE_FIELD:
            return [states count];
            break;
        
        case CAR_FIELD:
            return [[cars objectAtIndex:component] count];
            break;
            
        default:
            return 0;
    }

}

-(NSString *) pickerField:(NWPickerField *)pickerField titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    switch(pickerField.tag) {
        case STATE_FIELD:
            return [states objectAtIndex:row];
            break;
            
        case CAR_FIELD:
            return [[cars objectAtIndex:component] objectAtIndex:row];
            break;
            
        default:
            return nil;
    }	
}

//-(NSInteger) pickerField:(NWPickerField *)pickerField rowForTitle:(NSString*)title {
//	return [data indexOfObject:title];
//}

@end
