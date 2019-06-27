//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by hw on 26/06/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("3. YelloVC viewDidLoad\n ", #file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        print("***** close YelloVC *****")
        self.navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        print("3. YelloVC viewWillAppear\n", #file, #line, #function, #column)
        super.viewWillAppear(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("3. YelloVC viewDidAppear\n", #file, #line, #function, #column)
        super.viewDidAppear(true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("3. YelloVC viewWillDisappear\n", #file, #line, #function, #column)
        super.viewWillDisappear(true)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("3. YelloVC viewDidDisappear\n", #file, #line, #function, #column)
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
