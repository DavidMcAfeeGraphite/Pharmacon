//
//  About.m
//  Pharmacon
//
//  Created by Sam Vale on 18/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "About.h"

@interface About ()

@end

@implementation About

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    BOOL hasRun = [[NSUserDefaults standardUserDefaults]boolForKey:@"hasRun"];
    
    if (!hasRun) {
        UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Rate The App" message:@"Please Rate the App 5 Stars" delegate:self cancelButtonTitle:@"No Thanks"  otherButtonTitles: @"Rate Now", nil];
    [alert show];
    [alert release];
    [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"RanBefore"];
    [[NSUserDefaults standardUserDefaults] synchronize];

}
    

}
- (void) alertView:(UIAlertView *) alertView clickedButtonAtIndex:(NSInteger) index {
    if(index == 1) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"Example URL"]];
    }    }                                           


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
