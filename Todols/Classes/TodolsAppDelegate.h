//
//  TodolsAppDelegate.h
//  Todols
//
//  Created by Jeremy Johnstone on 8/10/09.
//  Copyright Yahoo! Inc. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodolsAppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
	IBOutlet UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;

@end

