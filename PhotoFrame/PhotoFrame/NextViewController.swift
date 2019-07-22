//
//  NextViewController.swift
//  PhotoFrame
//
//  Created by Daheen Lee on 22/07/2019.
//  Copyright © 2019 allwhite. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func previousButtonTouched(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: {
            print("view controller successfully dismissed")
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
