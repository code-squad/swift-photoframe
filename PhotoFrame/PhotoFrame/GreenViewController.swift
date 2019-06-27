//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by hw on 26/06/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

   
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        print("***** close GreenVC!! *****")
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("2. GreenVC viewDidLoad\n ", #file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("2. GreenVC viewWillAppear\n", #file, #line, #function, #column)
        super.viewWillAppear(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("2. GreenVC viewDidAppear\n", #file, #line, #function, #column)
        super.viewDidAppear(true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("2. GreenVC viewWillDisappear\n", #file, #line, #function, #column)
        super.viewWillDisappear(true)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("2. GreenVC viewDidDisappear\n", #file, #line, #function, #column)
        super.viewDidDisappear(true)
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
