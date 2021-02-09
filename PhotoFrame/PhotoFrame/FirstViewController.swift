//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 지북 on 2021/02/09.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var photoLabel: UILabel!
    @IBOutlet var photoDiscription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Dumba의 사진 액자"
        self.photoDiscription.text = "안녕하세요"
    }
}
