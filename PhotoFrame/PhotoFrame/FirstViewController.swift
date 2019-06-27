//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by jang gukjin on 25/06/2019.
//  Copyright © 2019 jang gukjin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBAction func nextButtonToched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
        self.firstDescription.alpha = 1
    }
    
    @IBAction func goToSkyBlueView(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let skyBlueVC = storyboard.instantiateViewController(withIdentifier:  "SkyBlueViewController")
        if let skyBlueVC = skyBlueVC as? SkyBlueViewController {
            skyBlueVC.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            self.present(skyBlueVC, animated: true, completion: nil)
        }
    }
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func loadView() {
        super.loadView()
        print("First view 로드", #file, #line, #function, #column)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("First view가 로드되었어요",#file, #line, #function, #column)
        self.photoLabel.text = "Aiden의 사진액자"
        self.photoLabel.textColor = UIColor(red: 0.3, green: 0.5, blue: 1.0, alpha: 1)
        self.photoLabel.backgroundColor = UIColor.cyan
        self.photoLabel.font = UIFont(name: "Apple Color Emoji", size: 30)
        self.firstDescription.text = "Since 25.06.19"
        self.firstDescription.font = UIFont.italicSystemFont(ofSize: 20)
        self.firstDescription.alpha = 0.5
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First view가 등장할꺼에요",#file,#line,#function,#column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First view가 등장했었어요",#file,#line,#function,#column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("First view가 사라질꺼에요",#file,#line,#function,#column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("First view가 사라졌었어요",#file,#line,#function,#column)
    }
}

