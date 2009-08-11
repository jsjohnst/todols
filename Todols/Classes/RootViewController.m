//
//  RootViewController.m
//  Todols
//
//  Created by Jeremy Johnstone on 8/10/09.
//  Copyright 2009 Yahoo! Inc.. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController
@synthesize controllers;


 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.title = @"Todols - Home";
	NSMutableArray *array = [[NSMutableArray alloc] init];
	self.controllers = array;
	[array release];
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[controllers release];
    [super dealloc];
}

- (IBAction) buttonPressed:(id)sender {
	UIButton *button = sender;
	NSLog(@"Sender: %@", button.currentTitle);
}

@end
