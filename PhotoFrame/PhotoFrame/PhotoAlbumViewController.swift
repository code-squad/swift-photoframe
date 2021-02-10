//
//  PhotoAlbumViewController.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/09.
//

import UIKit

class PhotoAlbumViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoAlbumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        Animation.imageCrossDissolveAnimate(imageView: photoImageView,
                                            selectImage: randomImageSelect())
        Animation.labelAlphaIncrease(target: photoAlbumLabel, withDuration: 0.5)
    }
    @IBAction func selectButtonTouched(_ sender: Any) {
        
    }
}

extension PhotoAlbumViewController {
    
    func randomImageSelect() -> String {
        let number = Int.random(in: 1...22)
        return String(format: "%02d.jpg", number)
    }
}
