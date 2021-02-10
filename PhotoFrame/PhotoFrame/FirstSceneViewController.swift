//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 이다훈 on 2021/02/10.
//

import UIKit

class FirstSceneViewController: UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        photoLabel.font = .boldSystemFont(ofSize: 20)
        photoLabel.textColor = .brown
        photoLabel.backgroundColor = .darkGray
        photoLabel.text = "Downey의 사진액자"
        photoLabel.textAlignment = .center
        
        firstDescription.text = "init"
        firstDescription.font.withSize(20)
        firstDescription.textColor = UIColor(displayP3Red: 0.2, green: 0.5, blue: 0.3, alpha: 0.3)
        
        firstDescription.textAlignment = .right
        // Do any additional setup after loading the view.
    }
}
