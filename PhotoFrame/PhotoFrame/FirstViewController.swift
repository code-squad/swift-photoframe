//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/09.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Lollo's Photo"
        self.photoLabel.adjustsFontSizeToFitWidth = true
        self.photoLabel.shadowColor = .lightGray
        self.photoLabel.shadowOffset = CGSize(width: 0.5, height: 0.5)
        
        self.photoDescription.text = "착한 사람 눈에만 보이는 사진입니다"
        self.photoDescription.adjustsFontSizeToFitWidth = true
        self.photoDescription.textColor = .white
        self.photoDescription.backgroundColor = .black
        self.photoDescription.alpha = 0.6
    }
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = .purple
        self.photoLabel.backgroundColor = .lightGray
        self.photoLabel.alpha = 0.5
    }
}
