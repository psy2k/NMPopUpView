//
//  ViewController.swift
//  NMPopUpViewSwift
//
//  Created by Nikos Maounis on 09/20/2015.
//  Copyright (c) 2015 Nikos Maounis. All rights reserved.
//

import UIKit
import NMPopUpViewSwift

class ViewController: UIViewController {

    @IBOutlet weak var showPopupBtn: UIButton!

    var popViewController: PopUpViewControllerSwift!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setRoundedBorder(5.0, withBorderWidth: 1.0, withColor: UIColor(red: 0.0, green: 122.0 / 255.0, blue: 1.0, alpha: 1.0), forButton: showPopupBtn)
    }

    @IBAction func showPopUp(_ sender: AnyObject) {
        let bundle = Bundle(for: PopUpViewControllerSwift.self)
        if UIDevice.current.userInterfaceIdiom == .pad {
            self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPad", bundle: bundle)
            self.popViewController.title = "This is a popup view"
            self.popViewController.showInView(aView: self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
        } else {
            if UIScreen.main.bounds.size.width > 320.0 {
                if UIScreen.main.scale == 3.0 {
                    self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPhone6Plus", bundle: bundle)
                    self.popViewController.title = "This is a popup view"
                    self.popViewController.showInView(aView: self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
                } else {
                    self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController_iPhone6", bundle: bundle)
                    self.popViewController.title = "This is a popup view"
                    self.popViewController.showInView(aView: self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
                }
            } else {
                self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController", bundle: bundle)
                self.popViewController.title = "This is a popup view"
                self.popViewController.showInView(aView: self.view, withImage: UIImage(named: "typpzDemo"), withMessage: "You just triggered a great popup window", animated: true)
            }
        }
    }

    func setRoundedBorder(_ radius: CGFloat, withBorderWidth borderWidth: CGFloat, withColor color: UIColor, forButton button: UIButton) {
        let l: CALayer = button.layer
        l.masksToBounds = true
        l.cornerRadius = radius
        l.borderWidth = borderWidth
        l.borderColor = color.cgColor
    }

}
