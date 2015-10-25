NMPopUpView
===========

Simple class for iOS that shows nice popup windows, written in Swift. The project is build with Swift 2.0, so you need Xcode 7.0 or higher to use it. 

##Installation
###Automatic installation using Cocoapods
Add this to your podfile and run `pod install`:  
`pod "NMPopUpViewSwift"`

###Manual installation
To use it in your application, just import `PopViewControllerSwift.swift` (~~or `PopViewController.h`, `PopViewController.m` if you want to use the Objective-C version~~. If you still need the Objective-C version, download manually version 2.1 from [here](https://github.com/psy2k/NMPopUpView/releases)), `PopViewController.xib` and `PopViewController_iPad.xib`, `PopViewController_iPhone6.xib`, `PopViewController_iPhone6Plus.xib` files (or the `NMPopUpViewController` group from the example project) in your project:

###Usage
####Swift
`````swift
var popViewController : PopUpViewController = PopUpViewControllerSwift(nibName: "PopUpViewController", bundle: nil)
popViewController.title = "This is a popup view"
popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
```````````
To get the appropriate .xib for your screen size declare the popUp as a forced unrapped variable and then use a method similar to the one below in order to call it:
`````swift
var popViewController : PopUpViewControllerSwift!

@IBAction func showPopUp(sender: AnyObject) {
        let bundle = NSBundle(forClass: PopUpViewControllerSwift.self)
        if (UIDevice.currentDevice().userInterfaceIdiom == .Pad)
        {
            self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPad", bundle: bundle)
            self.popViewController.title = "This is a popup view"
            self.popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
        } else
        {
            if UIScreen.mainScreen().bounds.size.width > 320 {
                if UIScreen.mainScreen().scale == 3 {
                    self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPhone6Plus", bundle: bundle)
                    self.popViewController.title = "This is a popup view"
                    self.popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
                } else {
                    self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPhone6", bundle: bundle)
                    self.popViewController.title = "This is a popup view"
                    self.popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
                }
            } else {
                self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController", bundle: bundle)
                self.popViewController.title = "This is a popup view"
                self.popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
            }
        }
    }
`````
####Objective-C
`````objective-c
PopUpViewController *popViewController = [[PopUpViewController alloc] 
                                         initWithNibName:@"PopUpViewController" bundle:nil]; 
[popViewController setTitle:@"This is a popup view"];
[popViewController showInView:self.view 
                   withImage:[UIImage imageNamed:@"yourImage"] 
                   withMessage:@"Your Message" animated:YES];
```````````

Final output is shown below:

![alt tag](https://dl.dropboxusercontent.com/u/43740014/popupios1.gif)

The MIT License (MIT)
======================
Copyright (c) 2013 Nikos Maounis

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
