//
//  ViewController.h
//  Pharmacon
//
//  Created by Sam Vale on 10/03/12.
//  Copyright (c) 2012 GRAPHITE All rights reserved.

#import <UIKit/UIKit.h>
#import "About.h"
#import "Credits.h"

@interface ViewController : UIViewController{
    
    IBOutlet UIButton *button;
    ViewController *myViewController;
   IBOutlet UIView *Sam;
    UIImageView *myImageView;
}
-(IBAction)buttonPressed;

@end
