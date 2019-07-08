//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 08/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("file: \(#file)") // 어떤 파일인지 절대경로
        print("line: \(#line)") // 몇번째 라인인지
        print("function: \(#function)") // 어떤 함수내에서 호출하는 지
        print("column: \(#column)")     // 줄에서 몇번째인지
        
        // Do any additional setup after loading the view.
    }


}

