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
        self.changeProperty()
    }
    
    func changeProperty() {
        self.photoLabel.text = "Lia의 사진액자"
        self.photoLabel.textColor = .black
        self.photoLabel.backgroundColor = .systemTeal
        self.photoLabel.alpha = 0.5
        self.photoLabel.clipsToBounds = true
        self.photoLabel.layer.cornerRadius = 20
        self.photoDescription.textColor = .systemGray
    }
    
    @IBAction func propertyChangeButton(_ sender: Any) {
        self.photoLabel.textColor = .systemTeal
        self.photoLabel.backgroundColor = .black
        self.photoLabel.alpha = 0.5
        self.photoLabel.clipsToBounds = true
        self.photoLabel.layer.cornerRadius = 20
    }
    
}

