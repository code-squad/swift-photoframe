//
//  SecondTapViewController.swift
//  PhotoFrame
//
//  Created by Jun Ho JANG on 2021/02/10.
//

import UIKit

class SecondTapViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    private let photoNumberArray: [String] = ["01.jpg", "02.jpg", "03.jpg", "04.jpg", "05.jpg", "06.jpg", "07.jpg", "08.jpg", "09.jpg", "10.jpg",
                                              "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg", "16.jpg", "17.jpg", "18.jpg", "19.jpg", "20.jpg",
                                              "21.jpg", "22.jpg"]
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        
        let randomlySelectedPhoto = photoNumberArray.randomElement()!
        self.photoImageView.image = UIImage(named: randomlySelectedPhoto)
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "01.jpg")
        
    }
    
}
