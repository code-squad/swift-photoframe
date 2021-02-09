//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by Ador on 2021/02/09.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    // MARK: - IBAction
    @IBAction func nextButtonTouched(_ sender: Any) {
        if let blueVC = storyboard?.instantiateViewController(identifier: "blueVC") {
            present(blueVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
