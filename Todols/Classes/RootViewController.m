//
//  RootViewController.m
//  Todols
//
//  Created by Jeremy Johnstone on 8/10/09.
//  Copyright 2009 Yahoo! Inc.. All rights reserved.
//

#import "RootViewController.h"
#import "TodolsAppDelegate.h"
#import "ActionListView.h"


@implementation RootViewController


 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.title = @"Home";
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
    [super dealloc];
}

- (IBAction) buttonPressed:(id)sender {
	UIButton *button = sender;
	NSLog(@"You pressed the '%@' button!", button.currentTitle);
	UIViewController *nextController = nil;
	
	if([button.currentTitle caseInsensitiveCompare: @"Inbox"] == 0) {
		nextController = [[ActionListView alloc] init];
		nextController.title = @"Actions - Inbox";
		NSLog(@"nextController: %@", nextController);
	} else if([button.currentTitle caseInsensitiveCompare: @"Today"] == 0) {
		nextController = [[ActionListView alloc] init];
		nextController.title = @"Actions - Today";
		NSLog(@"nextController: %@", nextController);
	} else if([button.currentTitle caseInsensitiveCompare: @"This Week"] == 0) {
		nextController = [[ActionListView alloc] init];
		nextController.title = @"Actions - This Week";
		NSLog(@"nextController: %@", nextController);
	} else if([button.currentTitle caseInsensitiveCompare: @"Someday"] == 0) {
		nextController = [[ActionListView alloc] init];
		nextController.title = @"Actions - Someday";
		NSLog(@"nextController: %@", nextController);
	}
	
	if(nextController) {
		TodolsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
		[delegate.navController pushViewController:nextController animated:YES];
	}
}

@end
