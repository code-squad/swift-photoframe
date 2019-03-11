//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Elena on 11/03/2019.
//  Copyright © 2019 elena. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        https://docs.swift.org/swift-book/ReferenceManual/Expressions.html
//        #file    String    파일이 나타나는 파일의 이름입니다.
//        #line    Int    표시되는 행 번호.
//        #column    Int    열이 시작되는 열 번호입니다.
//        #function    String    이름이 나타나는 선언의 이름입니다.
//        #dsohandle    UnsafeRawPointer    DSO (동적 공유 객체)는 사용중인 곳에서 처리합니다.
        
        print(#file, #line, #function, #column)
    }


}
