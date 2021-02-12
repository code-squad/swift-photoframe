//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 조중윤 on 2021/02/12.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(false)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(false)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(false)
        print(#file, #line, #function, #column)
    }
    @IBAction func closeButtonTouched(_ sender: UIButton) {
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
