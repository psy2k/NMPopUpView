//
//  ViewController.h
//  NMPopUpView
//
//  Created by Nikos Maounis on 9/12/13.
//  Copyright (c) 2013 Nikos Maounis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NMPopUpView-Swift.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *showPopupBtn;
@property (strong, nonatomic) PopUpViewControllerSwift *popViewController;

@end
