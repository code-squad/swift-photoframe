//
//  ThirdSceneViewController.swift
//  PhotoFrame
//
//  Created by Issac on 2021/02/10.
//

import UIKit

class ThirdSceneViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let imageNum = String(format: "%02d", Int.random(in: 1...22))
        guard let uiImage = UIImage(named: "\(imageNum).jpg") else { return }
        guard let image = CIImage(image: uiImage) else { return }
        guard let filter = CIFilter(name: "CISepiaTone") else { return }
        
        filter.setValue(image, forKey: kCIInputImageKey)
        filter.setValue(0.7, forKey: kCIInputIntensityKey)
        
        guard let filterOutputImage = filter.outputImage else { return }
        
        let newImage = UIImage(ciImage: filterOutputImage)
        self.imageView.image = newImage
    }

}
