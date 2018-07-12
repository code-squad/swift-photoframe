//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Yoda Codd on 2018. 6. 28..
//  Copyright © 2018년 Drake. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(#file, #line, #function, #column)
        
        self.photoImageView.contentMode = UIViewContentMode.scaleAspectFit
    }

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        // 1~22 의 랜덤문자열 생성
        let fileNumber = literalize(random())
        self.photoImageView.image = UIImage(named: "\(fileNumber).jpg")
    }
    
    /// 1~22 까지의 랜덤정수를 리턴하는 함수
    func random()-> Int {
        return Int(arc4random_uniform(22))+1
    }
    
    /// 정수를 입력받아서 두글자 문자열로 리턴하는 함수
    func literalize(_ num: Int) -> String{
        if num < 10 {
            return "0\(num)"
        }
        else {
            return "\(num)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

