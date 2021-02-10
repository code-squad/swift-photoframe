//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by 심영민 on 2021/02/09.
//

import UIKit
import Foundation

class PhotoViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoLabel.text = "Photo Album"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextImageButtonTouched(_ sender: Any) {
//        print("\(arc4random_uniform(22) + 1).png")
//        self.photoImageView.image = UIImage(named:"\(arc4random_uniform(22) + 1).png")

        let randomNum = arc4random_uniform(22) + 1
        let randomString = randomNum > 10 ? String(randomNum) : ("0"+"\(randomNum)")

        let filepath = Bundle.main.path(forResource: randomString, ofType: "jpg")!
        self.photoImageView.image = UIImage(contentsOfFile: filepath)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
