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
        print("viewWillAppear", #file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear", #file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisapper", #file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear", #file, #line, #function, #column)
    }
  
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
