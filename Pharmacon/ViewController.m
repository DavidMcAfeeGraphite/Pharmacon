//
//  ViewController.m
//  Pharmacon
//
//  Created by Sam Vale on 10/03/12.
//  Copyright (c) 2012 __GRAPHITE__. All rights reserved.
//

#import "ViewController.h"
#import "QuartzCore/QuartzCore.h"
#import "Credits.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)buttonPressed;{
    
    // get the view that's currently showing
	UIView *currentView = self.view;
	// get the the underlying UIWindow, or the view containing the current view view
	UIView *theWindow = [currentView superview];
	
	// remove the current view and replace with myView1
	[currentView removeFromSuperview];
	[theWindow addSubview:Sam];
	
	// set up an animation for the transition between the views
	CATransition *animation = [CATransition animation];
	[animation setDuration:0.5];
	[animation setType:kCATransitionPush];
	[animation setSubtype:kCATransitionFromLeft];
	[animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
	
	[[theWindow layer] addAnimation:animation forKey:@"SwitchToView1"];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    BOOL TandC = [[NSUserDefaults standardUserDefaults]boolForKey:@"RanBefore"];
    if(!TandC) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Pharmacon Guidelines" message:@"DONT COPY OUT APP DOUCHEBAG!" delegate:self cancelButtonTitle:@"No Thanks"  otherButtonTitles: @"I Agree", nil];        [alert show];
        [alert release];
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"RanBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];

        
    }

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [[NSUserDefaults standardUserDefaults]setBool:NO forKey:@"RanBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        exit(0);
        
    }
    else if (buttonIndex == 1)
    {
        //reset clicked
    }
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
@end