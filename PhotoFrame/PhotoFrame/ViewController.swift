//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 조중윤 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        self.photoLabel.text = "JEJE의 사진액자"
        self.firstDescription.text = "Are you ready to make?"
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
    
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
            self.photoLabel.textColor = UIColor.blue
            self.photoLabel.backgroundColor = UIColor.yellow
            self.photoLabel.alpha = 0.5
    }
}

