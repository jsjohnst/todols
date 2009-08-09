//
//  Todo_Window_BasedAppDelegate.m
//  Todo Window Based
//
//  Created by Franziska Hinkelmann on 8/9/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Todo_Window_BasedAppDelegate.h"
#import "TodoViewController.h"

@implementation Todo_Window_BasedAppDelegate


@synthesize window;
@synthesize todoViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	[window addSubview:todoViewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
	[todoViewController release];
    [super dealloc];
}


@end
