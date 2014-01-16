//
//  ViewController.m
//  NMPopUpView
//
//  Created by Nikos Maounis on 9/12/13.
//  Copyright (c) 2013 Nikos Maounis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize showPopupBtn;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showPopUp:(id)sender {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
        self.popViewController = [[PopUpViewController alloc] initWithNibName:@"PopUpViewController_iPad" bundle:nil];
        [self.popViewController setTitle:@"This is a popup view"];
    
        [self.popViewController showInView:self.view withImage:[UIImage imageNamed:@"typpzdemo"] withMessage:@"You just triggered a great popup window" animated:YES];
    } else {
        self.popViewController = [[PopUpViewController alloc] initWithNibName:@"PopUpViewController" bundle:nil];
        [self.popViewController setTitle:@"This is a popup view"];
        
        [self.popViewController showInView:self.view withImage:[UIImage imageNamed:@"typpzdemo"] withMessage:@"You just triggered a great popup window" animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
