//
//  REMNavDetailViewController.h
//  Transitions
//
//  Created by Richard E Millet on 2/16/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface REMNavDetailViewController : UIViewController

@property (strong, nonatomic) NSString *displayLetterProperty;

- (void)displayTheLetter:(NSString *) letterToDisplay;

@end
