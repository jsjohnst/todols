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
@synthesize navController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	[window addSubview:navController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
	[navController release];
    [super dealloc];
}


@end
