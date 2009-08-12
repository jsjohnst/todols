//
//  RootViewController.h
//  Todols
//
//  Created by Jeremy Johnstone on 8/10/09.
//  Copyright 2009 Yahoo! Inc.. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RootViewController : UIViewController {
	IBOutlet UIButton *inboxButton;
	IBOutlet UIButton *todayButton;
	IBOutlet UIButton *weekButton;
	IBOutlet UIButton *somedayButton;
}

@property (nonatomic,readwrite,retain) UIButton *inboxButton;
@property (nonatomic,readwrite,retain) UIButton *todayButton;
@property (nonatomic,readwrite,retain) UIButton *weekButton;
@property (nonatomic,readwrite,retain) UIButton *somedayButton;

- (IBAction) buttonPressed:(id)sender;

@end
