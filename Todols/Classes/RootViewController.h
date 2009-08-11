//
//  RootViewController.h
//  Todols
//
//  Created by Jeremy Johnstone on 8/10/09.
//  Copyright 2009 Yahoo! Inc.. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RootViewController : UIViewController {
	NSArray *controllers;
}

@property (nonatomic, retain) NSArray *controllers;

- (IBAction) buttonPressed:(id)sender;

@end
