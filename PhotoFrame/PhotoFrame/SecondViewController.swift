//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by hw on 24/06/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        print("secondSceneVC viewDidLoad\n", #file, #line, #function, #column)
        self.photoImageView.image = UIImage(named: "07.jpg")
        super.viewDidLoad()
    }

    @IBAction func displayNextImage(_ sender: Any) {
        let imageId = generateImageId()
        self.photoImageView.image = UIImage(named: "\(imageId).jpg")
    }
    
    private func generateImageId() -> String {
        let randomNumber = Int.random(in: 1..<23)
        var result = String.init(format: "%.2d", randomNumber)
        
        return result
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("secondSceneVC viewWillAppear\n", #file, #line, #function, #column)
        super.viewWillAppear(true)
    }
    override func viewDidAppear(_ animated: Bool) {
        print("secondSceneVC viewDidAppear\n", #file, #line, #function, #column)
        super.viewDidAppear(true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("secondSceneVC viewWillDisappear\n", #file, #line, #function, #column)
        super.viewWillDisappear(true)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("secondSceneVC viewDidDisappear\n", #file, #line, #function, #column)
        super.viewDidDisappear(true)
    }
}


