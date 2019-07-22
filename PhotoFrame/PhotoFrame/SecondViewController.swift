//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 08/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("file: \(#file)") // 어떤 파일인지 절대경로
        print("line: \(#line)") // 몇번째 라인인지
        print("function: \(#function)") // 어떤 함수내에서 호출하는 지
        print("column: \(#column)")     // 줄에서 몇번째인지
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        super.loadView()
    }
    
    @IBAction func touchUpPresent(_ sender: UIButton) {
        guard let storyboard = self.storyboard else {
            return
        }
        let destination = storyboard.instantiateViewController(withIdentifier: "NeonViewController")
        self.present(destination, animated: true)
    }
    
    
    @IBAction func touchUpLoadViewFromXib(_ sender: Any) {
        let xibView = XibView(frame: self.view.frame)
        self.view.addSubview(xibView)
    }
}

