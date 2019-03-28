//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 김지나 on 11/03/2019.
//  Copyright © 2019 김지나. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstLabel.text = "노리의 사진액자"
        self.firstLabel.textColor = UIColor.yellow
        self.firstLabel.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        self.firstLabel.font = firstLabel.font.withSize(50)
 
        self.firstDescription.text = "파덕?????"
        self.firstDescription.textColor = UIColor.blue.withAlphaComponent(0.5)
        self.firstDescription.backgroundColor = UIColor(red:0.97, green:0.98, blue:0.56, alpha:1.0)
        self.firstDescription.font = firstDescription.font.withSize(15)
 
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
        
        // segue 연결없이 화면 전환! ->>
        // 이동할 뷰컨트롤러 객체를 스토리보드ID를 이용하여 참조
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "greenView") {
             //화면을 전환할 때 애니메이션 정의
            //vc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            
            //인자값으로 받은 컨트롤러로 화면 이동
            self.navigationController?.pushViewController(vc, animated: true)
            //self.present(vc, animated: true, completion: nil)
            
        }
    }

}
