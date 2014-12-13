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
    [self setRoundedBorder:5 borderWidth:1 color:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forButton:showPopupBtn];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showPopUp:(id)sender {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
        self.popViewController = [[PopUpViewControllerSwift alloc] initWithNibName:@"PopUpViewController_iPad" bundle:nil];
        [self.popViewController setTitle:@"This is a popup view"];
        
        [self.popViewController showInView:self.view withImage:[UIImage imageNamed:@"typpzDemo"] withMessage:@"You just triggered a great popup window" animated:YES];
    } else {
        if ([UIScreen mainScreen].bounds.size.width > 320){
            if ([UIScreen mainScreen].scale == 3){
                self.popViewController = [[PopUpViewControllerSwift alloc] initWithNibName:@"PopUpViewController_iPhone6Plus" bundle:nil];
                [self.popViewController setTitle:@"This is a popup view"];
                
                [self.popViewController showInView:self.view withImage:[UIImage imageNamed:@"typpzDemo"] withMessage:@"You just triggered a great popup window" animated:YES];
            } else {
                self.popViewController = [[PopUpViewControllerSwift alloc] initWithNibName:@"PopUpViewController_iPhone6" bundle:nil];
                [self.popViewController setTitle:@"This is a popup view"];
                
                [self.popViewController showInView:self.view withImage:[UIImage imageNamed:@"typpzDemo"] withMessage:@"You just triggered a great popup window" animated:YES];
            }
        } else {
            self.popViewController = [[PopUpViewControllerSwift alloc] initWithNibName:@"PopUpViewController" bundle:nil];
            [self.popViewController setTitle:@"This is a popup view"];
            
            [self.popViewController showInView:self.view withImage:[UIImage imageNamed:@"typpzDemo"] withMessage:@"You just triggered a great popup window" animated:YES];
        }
    }
}

- (void)setRoundedBorder:(float)radius borderWidth:(float)borderWidth color:(UIColor*)color forButton:(UIButton *)button
{
    CALayer * l = [button layer];
    [l setMasksToBounds:YES];
    [l setCornerRadius:radius];
    // You can even add a border
    [l setBorderWidth:borderWidth];
    [l setBorderColor:[color CGColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
