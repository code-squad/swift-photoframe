//
//  SecondSceneViewController.swift
//  PhotoFrame
//
//  Created by 이다훈 on 2021/02/10.
//

import UIKit

class SecondSceneViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var photoFrame: UIImageView!
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "\(randomNumberAsString()).jpg")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }

    func randomNumberAsString() -> String {
        let num = Int.random(in: 1...22)
        var sol = String()
        if num < 10 {
            sol = "0\(num)"
        }
        else {
            sol = String(num)
        }
        return sol
    }
}
