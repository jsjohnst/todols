//
//  TodoViewController.m
//  Todo Window Based
//
//  Created by Franziska Hinkelmann on 8/9/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "TodoViewController.h"
#import "DisplayActionViewController.h"
#import "HomeViewController.h"
#import "InboxViewController.h"
#import "AddActionViewController.h"


@implementation TodoViewController
@synthesize displayActionViewController;
@synthesize homeViewController;
@synthesize inboxViewController;
@synthesize addActionViewController;
@synthesize controllers; 




 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad { 
	HomeViewController *homeController = [[HomeViewController alloc] initWithNibName:@"HomeView" bundle:nil];
	self.homeViewController = homeController;
	[self.view insertSubview:homeController.view atIndex:0]; 
	[homeController release]; 
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

- (IBAction)switchInboxView:(id)sender {
	
}

- (IBAction)switchAddActionView:(id)sender {
	if (self.addActionViewController == nil) {
		AddActionViewController *addActionController = [[AddActionViewController alloc] initWithNibName:@"AddActionView" bundle:nil];
		self.addActionViewController = addActionController;
		[addActionController release];
	}
	
	
	if (self.homeViewController.view.superview == nil) {
		[addActionViewController.view removeFromSuperview];
		[self.view insertSubview: self.homeViewController.view atIndex:0];
	} else {
		[homeViewController.view removeFromSuperview];
		[self.view insertSubview: self.addActionViewController.view atIndex:0];
	}
}


- (void)dealloc {
    [super dealloc];
}


@end
