//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by yuaming on 05/03/2018.
//  Copyright © 2018 yuaming. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closedButtonTouched(_ sender: UIButton) {
//        print(#file, #line, #function, #column)
//        self.dismiss(animated: true, completion: nil)
        
        self.navigationController?.popViewController(animated: true)
        
//        let fisrtViewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FisrtViewController")
        
        let secondViewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")

        
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
//        self.navigationController?.popViewController(animated: true)
    }
}
