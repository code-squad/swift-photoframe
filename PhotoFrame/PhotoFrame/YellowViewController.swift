//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 한천희 on 2020/02/07.
//  Copyright © 2020 한천희. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Yellow viewWillAppear", #file, #line, #function, #column)
    }

    override func viewDidAppear(_ animated: Bool) {
        print("Yellow viewDidAppear", #file, #line, #function, #column)
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("Yellow viewWillDisappear", #file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Yellow viewDidDisappear", #file, #line, #function, #column)
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
