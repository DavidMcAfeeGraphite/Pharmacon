//
//  ViewController.h
//  Pharmacon
//
//  Created by GRAPHITE on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.

#import <UIKit/UIKit.h>
#import "About.h"
#import "Credits.h"

@interface ViewController : UIViewController{
    
    IBOutlet UIButton *button;
    ViewController *myViewController;
    UIView *myImageView;
}

-(IBAction)GRAPHITEBUTTON;

@end
