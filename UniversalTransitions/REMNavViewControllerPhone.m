//
//  REMNavViewControllerPhone.m
//  UniversalTransitions
//
//  Created by Richard E Millet on 2/20/13.
//  Copyright (c) 2013 Richard Millet. All rights reserved.
//

#import "REMNavViewControllerPhone.h"
#import "REMNavDetailViewController.h"

@interface REMNavViewControllerPhone ()

@property(strong, nonatomic) REMNavDetailViewController *detailVC;

@end

@implementation REMNavViewControllerPhone

#pragma mark - Auto generated methods

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

#pragma mark - Segue overrides

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	self.detailVC = segue.destinationViewController;
}

#pragma mark - My Button Actions

- (void)performSegueWithLetter:(NSString *)letter {
	[self performSegueWithIdentifier:@"pushButtonChoice"
							  sender:self];
	[self.detailVC displayTheLetter:letter];
}

//
// Button pressed methods
//
- (IBAction)sampleDPressed:(UIButton *)sender {
	[self performSegueWithLetter:@"D"];
}

- (IBAction)sampleEPressed:(UIButton *)sender {
	[self performSegueWithLetter:@"E"];
}

- (IBAction)sampleFPressed:(UIButton *)sender {
	[self performSegueWithLetter:@"F"];
}

@end
