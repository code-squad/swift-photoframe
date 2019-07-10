//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by CHOMINJI on 09/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        
        //글자색 배경색 투명도 글자 크기
        photoLabel.text = "민디의 사진액자🥳"
        
        photoDescription.text = "Photo by Mindy"
    }


}

