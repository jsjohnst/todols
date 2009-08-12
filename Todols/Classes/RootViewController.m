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
#import "AddActionView.h"
#import "SearchView.h"

@implementation RootViewController

@synthesize inboxButton;
@synthesize todayButton;
@synthesize weekButton;
@synthesize somedayButton;

- (void)viewDidLoad {
	self.title = @"Home";
	self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
	[super viewDidLoad];
}

- (IBAction) buttonPressed:(id)sender {
	UIViewController *nextController = nil;
	TodolsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	
	if(sender == inboxButton || sender == todayButton || sender == weekButton || sender == somedayButton) {
		NSString *buttonLabel = ((UIButton *) sender).currentTitle;
		NSLog(@"You pressed the '%@' button!", buttonLabel);
		nextController = [[ActionListView alloc] init];
		nextController.title = [@"Actions - " stringByAppendingString: buttonLabel];
	} else if(sender == delegate.navController.navigationBar.topItem.rightBarButtonItem) {
		nextController = [[AddActionView alloc] init];
		nextController.title = @"New Action";
	} else if(sender == delegate.navController.navigationBar.topItem.leftBarButtonItem) {
		nextController = [[SearchView alloc] init];
		nextController.title = @"Search";
	}
	
	NSLog(@"%@", sender);
	
	if(nextController) {
		NSLog(@"nextController: %@", nextController);
		[delegate.navController pushViewController:nextController animated:YES];
	}
}

@end
