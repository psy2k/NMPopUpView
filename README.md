NMPopUpView
===========

Simple class for iOS that shows nice popup windows. 

To use it in your application, just import `PopViewController.h`, `PopViewController.m` (or `PopViewControllerSwift.swift` if you want to use the swift version), `PopViewController.xib` and `PopViewController_iPad.xib` files (or the `NMPopUpViewController` group from the example project) in your project and call the pop up using this code in Swift:
`````swift
var popViewController : PopUpViewController = PopUpViewControllerSwift(nibName: "PopUpViewController", bundle: nil)
popViewController.title = "This is a popup view"
popViewController.showInView(self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
```````````
or this code in objective-c
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
