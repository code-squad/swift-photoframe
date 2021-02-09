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
        self.photoImageView.image = UIImage(named: imageSelect())
    }
}

extension PhotoAlbumViewController {

    func radomNumberGenerator() -> Int {
        return Int.random(in: 1...22)
    }
    
    func imageSelect() -> String {
        let number = radomNumberGenerator()
        if number < 10 {
            return "0\(number).jpg"
        }
        return "\(number).jpg"
    }
}
