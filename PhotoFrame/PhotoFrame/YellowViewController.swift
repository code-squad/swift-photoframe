//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 임승혁 on 2020/02/04.
//  Copyright © 2020 임승혁. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Yellow viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Yellow viewWillAppear", #file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Yellow viewDidAppear", #file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Yellow viewWillDisapper", #file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Yellow viewDidDisappear", #file, #line, #function, #column)
    }
  
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
