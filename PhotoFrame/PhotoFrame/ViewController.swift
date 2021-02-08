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
        self.photoLabel.text = "JEJE의 사진액자"
        self.firstDescription.text = "Are you ready to make?"
    }
}

