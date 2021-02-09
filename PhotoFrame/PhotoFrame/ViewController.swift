//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Lia on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Lia의 사진액자"
        self.photoLabel.backgroundColor = .systemTeal
        self.photoLabel.textColor = .black
        self.photoLabel.alpha = 0.5
        self.photoDescription.textColor = .systemGray
    }
    
}

