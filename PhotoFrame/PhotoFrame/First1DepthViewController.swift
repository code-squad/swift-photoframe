//
//  First1DepthViewController.swift
//  PhotoFrame
//
//  Created by TaeHyeonLee on 2017. 12. 21..
//  Copyright © 2017년 ChocOZerO. All rights reserved.
//

import UIKit

class First1DepthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
