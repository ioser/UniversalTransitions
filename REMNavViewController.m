//
//  REMNavViewController.m
//  Transitions
//
//  Created by Richard E Millet on 2/16/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "REMNavViewController.h"
#import "REMNavDetailViewController.h"

@interface REMNavViewController ()
@property (strong, nonatomic) REMNavDetailViewController *detailVC;
@end

@implementation REMNavViewController

//
// Overrides of base class methods
//
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    REMNavDetailViewController *navDetailVC = segue.destinationViewController;
    NSString *segueName = [segue identifier];
    navDetailVC.displayLetterProperty = [segueName substringFromIndex:[segueName length] - 1];
}

//
// Property setters and getters
//

- (REMNavDetailViewController *) detailVC {
	if (_detailVC == nil) {
		_detailVC = (REMNavDetailViewController *) [[self.splitViewController.viewControllers lastObject] topViewController];
	}
	return _detailVC;
}

//
// Button pressed methods
//
- (IBAction)sampleDPressed:(UIButton *)sender {
	[self.detailVC displayTheLetter:@"D"];
//	self.detailVC.displayLetterProperty = @"d";
}

- (IBAction)sampleEPressed:(UIButton *)sender {
	[self.detailVC displayTheLetter:@"E"];
}

- (IBAction)sampleFPressed:(UIButton *)sender {
	[self.detailVC displayTheLetter:@"F"];
}


@end
