//
//  HomeViewController.h
//  Todo Window Based
//
//  Created by Franziska Hinkelmann on 8/9/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TodoViewController;

@interface HomeViewController : UIViewController {
	IBOutlet TodoViewController *pvc;
}

-(IBAction)addActionPress:(id)sender; 

@end
