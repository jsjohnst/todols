//
//  TodolsAppDelegate.m
//  Todols
//
//  Created by Jeremy Johnstone on 8/10/09.
//  Copyright Yahoo! Inc. 2009. All rights reserved.
//

#import "TodolsAppDelegate.h"

@implementation TodolsAppDelegate

@synthesize window;
@synthesize navController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    [window addSubview: navController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[navController release];
    [window release];
    [super dealloc];
}


@end
