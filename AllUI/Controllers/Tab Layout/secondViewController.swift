//
//  secondViewController.swift
//  AllUI
//
//  Created by Ravi Tripathi on 20/02/18.
//  Copyright © 2018 Ravi Tripathi. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBAction func buttonB(_ sender: UIButton) {
         print("Button of secondViewController")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
