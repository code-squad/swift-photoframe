//
//  PhotoAlbumViewController.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/09.
//

import UIKit

class PhotoAlbumViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: randomImageSelect())
    }
}

extension PhotoAlbumViewController {
    
    func randomImageSelect() -> String {
        let number = Int.random(in: 1...22)
        return number < 10 ? "0\(number).jpg" : "\(number).jpg"
    }
}
