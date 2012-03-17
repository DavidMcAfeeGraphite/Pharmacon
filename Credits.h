//
//  Credits.h
//  Pharmacon
//
//  Created by Sam Vale on 17/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Credits : NSObject

@property (strong, nonatomic) IBOutlet UIImageView *screenShotImageView;
@property (strong, nonatomic) UIImage *screenShotImage;
@property (strong, nonatomic) UITapGestureRecognizer *tapGesture;
@property (strong, nonatomic) UIPanGestureRecognizer *panGesture;

- (IBAction)showLogoExpandingViewController;
- (IBAction)showLogoFadingViewController;

- (void)slideThenHide;
- (void)adjustAnchorPointForGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer ;


@end
