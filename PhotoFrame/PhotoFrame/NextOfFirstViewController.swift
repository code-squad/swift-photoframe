//
//  NextOfFirstViewController.swift
//  PhotoFrame
//
//  Created by 오킹 on 2021/02/10.
//

import UIKit

class NextOfFirstViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrame: UIImageView!
    override func viewDidLoad() {
        //액자 프레임 가장 뒤로 보냄
        self.view.insertSubview(photoFrame, at: 0)
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    //will: 직전
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    //Did: 직후
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomNum = String(format: "%02d", Int.random(in: 1...22))
        photoImageView.image = UIImage(named: "\(randomNum).jpg")
    }
}
