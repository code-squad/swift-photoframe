//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by sonjuhyeong on 2021/02/14.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "Demo Images/01.jpg")
        self.photoImageView.contentMode = .scaleAspectFill
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        // 1~9까지는 앞에 0이 붙는다. 따라서 format으로 맞춰준다.
        let randomNumber = String(format: "%02d" ,Int.random(in: 1...22))
        let image = "Demo Images/\(randomNumber).jpg"
        self.photoImageView.image = UIImage(named: image)
        self.photoImageView.contentMode = .scaleAspectFill
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
