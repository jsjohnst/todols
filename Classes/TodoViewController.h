//
//  TodoViewController.h
//  Todo Window Based
//
//  Created by Franziska Hinkelmann on 8/9/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class DisplayActionViewController;
@class HomeViewController;
@class InboxViewController;
@class AddActionViewController;

@interface TodoViewController : UIViewController {
	DisplayActionViewController *displayActionViewController;
	HomeViewController *homeViewController;
	InboxViewController *inboxViewController;
	AddActionViewController *addActionViewController;
	NSArray *controllers; 
} 

@property (nonatomic, retain) NSArray *controllers;
@property (retain, nonatomic) DisplayActionViewController *displayActionViewController;
@property (retain, nonatomic) HomeViewController *homeViewController;
@property (retain, nonatomic) InboxViewController *inboxViewController;
@property (retain, nonatomic) AddActionViewController *addActionViewController;

-(IBAction)switchAddActionView:(id)sender; 
-(IBAction)switchInboxView:(id)sender; 

@end
