//
//  REMDetailViewController.h
//  UniversalTransitions
//
//  Created by Richard E Millet on 2/19/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface REMDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
