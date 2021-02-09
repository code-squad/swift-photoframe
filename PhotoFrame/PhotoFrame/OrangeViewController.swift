//
//  OrangeViewController.swift
//  PhotoFrame
//
//  Created by Lia on 2021/02/09.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
