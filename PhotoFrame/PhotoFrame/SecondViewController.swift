//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Mrlee on 2017. 12. 21..
//  Copyright © 2017년 Napster. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let imgExtension = ".jpg"
        var imgName = ""
        let randomNumber = makeRandom()
        imgName = String(format: "%02d", randomNumber)
        self.photoImageView.image = UIImage(named: imgName + imgExtension)
    }
    private func makeRandom() -> Int {
        let MAX: UInt32 = 22
        let MIN: UInt32 = 1
        return Int(arc4random_uniform(MAX) + MIN)
    }
}
