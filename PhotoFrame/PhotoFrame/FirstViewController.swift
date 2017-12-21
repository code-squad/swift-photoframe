//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Mrlee on 2017. 12. 21..
//  Copyright © 2017년 Napster. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var photoLable: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    @IBAction func touchDown(_ sender: Any) {
        self.photoLable.font = UIFont.systemFont(ofSize: 50)
        self.photoLable.textColor = UIColor.brown
        self.photoLable.backgroundColor = UIColor.white
    }
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLable.textColor = UIColor.blue
        self.photoLable.backgroundColor = UIColor.yellow
        self.photoLable.alpha = 0.5
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLable.text = "Napster"
        self.photoLable.font = UIFont.systemFont(ofSize: 50)
        self.photoLable.textColor = UIColor.brown
        self.firstDescription.text = "Napster의 사진액자 입니다. 반갑습니다."
        // swiftlint:disable line_length
        self.firstDescription.textColor = UIColor(red: CGFloat(255), green: CGFloat(255), blue: CGFloat(102), alpha: CGFloat(20))
        self.firstDescription.backgroundColor = UIColor.gray
        print(#file, #line, #function, #column)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
