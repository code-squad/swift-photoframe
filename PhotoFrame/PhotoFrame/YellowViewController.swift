//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by Lia on 2021/02/09.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemYellow
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonTouch(_ sender: UIButton) {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
}
