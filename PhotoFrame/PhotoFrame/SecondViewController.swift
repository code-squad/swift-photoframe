//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 지북 on 2021/02/10.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var photoImageView: UIImageView!
    @IBAction func nextImageButton(_ sender: Any) {
        photoImageView.image = UIImage(named: randomImage())
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
}

extension SecondViewController {
    func randomImage() -> String {
        let number = Int.random(in: 1...22)
        return String(format: "%02d.jpg", number)
    }
}
