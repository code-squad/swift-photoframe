//
//  PurpleViewController.swift
//  PhotoFrame
//
//  Created by hw on 26/06/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("PurpleVC viewDidLoad ", #file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("PurpleVC viewWillAppear", #file, #line, #function, #column)
        super.viewWillAppear(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("PurpleVC viewDidAppear", #file, #line, #function, #column)
        super.viewDidAppear(true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("PurpleVC viewWillDisappear", #file, #line, #function, #column)
        super.viewWillDisappear(true)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("PurpleVC viewDidDisappear", #file, #line, #function, #column)
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
