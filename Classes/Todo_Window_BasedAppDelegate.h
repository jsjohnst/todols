//
//  Todo_Window_BasedAppDelegate.h
//  Todo Window Based
//
//  Created by Franziska Hinkelmann on 8/9/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TodoViewController;
@interface Todo_Window_BasedAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	TodoViewController *todoViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TodoViewController *todoViewController;


@end

