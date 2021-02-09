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
        self.photoLabel.text = "Lollo의 🖼"
        self.photoDescription.text = "착한 사람 눈에만 보이는 사진"
    }
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
}
