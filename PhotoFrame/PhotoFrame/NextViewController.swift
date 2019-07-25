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
        print(#file, #line, #function, #column)
        self.title = "Next"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closedButtonTouched(_ sender: Any) {
        print("--------------------")
        self.navigationController?.popViewController(animated: true)
//        self.dismiss(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
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
