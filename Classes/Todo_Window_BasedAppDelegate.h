//
//  Todo_Window_BasedAppDelegate.h
//  Todo Window Based
//
//  Created by Franziska Hinkelmann on 8/9/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Todo_Window_BasedAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;


@end

