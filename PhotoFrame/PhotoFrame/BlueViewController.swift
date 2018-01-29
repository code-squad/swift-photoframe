//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by jack on 2018. 1. 29..
//  Copyright © 2018년 jack. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextPage(_ sender: Any) {
        let orangeViewController = self.storyboard?.instantiateViewController(withIdentifier: "OrangePage")
        orangeViewController?.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(orangeViewController!, animated: true, completion: nil)
    }

}
