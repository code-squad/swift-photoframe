//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/11.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        photoLabel.text = "Photo Album"
        photoLabel.adjustsFontSizeToFitWidth = true
        setRandomImage()
        super.viewDidLoad()
    }

    @IBAction func randomButtonTouched(_ sender: Any) {
        setRandomImage()
    }
    
    func generateImageNumber() -> String {
        let randomNumber = Int.random(in: 1...22)
        return randomNumber > 9 ? "\(randomNumber)" : "0\(randomNumber)"
    }
    
    func setRandomImage() {
        let imageNumber = generateImageNumber()
        self.photoImageView.image = UIImage(named: "Demo Images/\(imageNumber).jpg")
    }
}
