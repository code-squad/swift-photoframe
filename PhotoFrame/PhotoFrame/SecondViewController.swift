//
//  SecongViewController.swift
//  PhotoFrame
//
//  Created by 양준혁 on 2021/02/10.
//

import UIKit

class SecondViewController: UIViewController {
    
    var numbers = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22"]
    @IBOutlet var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        self.photoImageView.image = UIImage(named: "\(numbers.randomElement()!).jpg")
    }
    
}
