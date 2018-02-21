//
//  SegueViewController.swift
//  AllUI
//
//  Created by Ravi Tripathi on 21/02/18.
//  Copyright © 2018 Ravi Tripathi. All rights reserved.
//

import UIKit

class SegueViewController: UIViewController, UIPopoverPresentationControllerDelegate  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue for the popover configuration window
        if segue.identifier == "popOverSegue" {
            if let controller = segue.destination as UIViewController? {
                controller.popoverPresentationController!.delegate = self as UIPopoverPresentationControllerDelegate
                controller.preferredContentSize = CGSize(width: 320, height: 186)
            }
        }
    }

    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        // return UIModalPresentationStyle.FullScreen
        return UIModalPresentationStyle.none
    }
}
