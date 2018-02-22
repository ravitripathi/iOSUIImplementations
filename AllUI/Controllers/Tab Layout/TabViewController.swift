//
//  TabViewController.swift
//  AllUI
//
//  Created by Ravi Tripathi on 20/02/18.
//  Copyright © 2018 Ravi Tripathi. All rights reserved.
//

import UIKit

class TabViewController: UIViewController {

   
    var currentViewController: UIViewController?
    
    lazy var firstChildTabVC: UIViewController? = {
        let firstChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "componentA")
        return firstChildTabVC
    }()
    
    lazy var secondChildTabVC : UIViewController? = {
        let secondChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "componentB")
        return secondChildTabVC
    }()
    
    @IBOutlet weak var contentView: UIView!
    @IBAction func showComponent(_ sender: UISegmentedControl) {
        self.currentViewController!.view.removeFromSuperview()
        self.currentViewController!.removeFromParentViewController()
        displayCurrentTab(sender.selectedSegmentIndex)
    }
    
    func displayCurrentTab(_ tabIndex: Int){
        var vc: UIViewController?
        switch tabIndex {
        case 0:
            vc  = firstChildTabVC
        case 1:
            vc = secondChildTabVC
        default:
            vc = firstChildTabVC
        }
        self.addChildViewController(vc!)
        vc!.didMove(toParentViewController: self)
        vc!.view.frame = self.contentView.bounds
        self.contentView.addSubview(vc!.view)
        self.currentViewController = vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentViewController = firstChildTabVC
        displayCurrentTab(0)
    }
}
