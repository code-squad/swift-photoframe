//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 이다훈 on 2021/02/15.
//

import UIKit

class YellowViewController: UIViewController {

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        
        print(#file, #line, #function, #column)
    }
    override func viewDidAppear(_ animated: Bool) {
        
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
