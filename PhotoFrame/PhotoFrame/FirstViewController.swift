//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by hw on 21/06/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    override func viewDidLoad() {
        willSetFirstViewSetting()
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
    var isChanged: Bool = false
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        if isChanged {
            self.firstLabel.textColor = UIColor.blue
            self.firstLabel.backgroundColor = UIColor.yellow
            self.firstLabel.alpha = 0.5
        }else{
            willSetFirstViewSetting()
        }
        isChanged = !isChanged
    }
    
    /// 반드시 Main.storyboard의 우측 utility bar에서
    /// PurpleViewController의 identity로 storyboard ID를 등록해야 한다.
    /// 클래스이름으로 등록해두면 편하다.
    @IBAction func showPurpleView(_ sender: Any) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let purpleVC = storyboard.instantiateViewController(withIdentifier: "PurpleViewController")
        if let purpleVC = purpleVC as? PurpleViewController  {
            // 화면을 전환할 때 사용할 애니메이션 정의
            purpleVC.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            // 인자값으로 받은 뷰 컨트롤러로 화면 이동
            self.present(purpleVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func nextButtonTouched2(_ sender: Any) {
        print("sender: \(sender)")
    }
    private func willSetFirstViewSetting() {
        self.firstLabel.text = "Doran의 사진액자"
        self.firstLabel.font = UIFont(name: "Times New Roman", size: 19)
        self.firstLabel.textColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        self.firstLabel.backgroundColor = UIColor(displayP3Red: 0.6, green: 0.7, blue: 0.65, alpha: 1.0)
        
        self.firstDescription.text = "FirstViewController에 의해 로딩"
        self.firstDescription.font = UIFont(name: "Times New Roman", size: 10)
        self.firstDescription.textColor = UIColor(displayP3Red: 0.9, green: 0.5, blue: 0.3, alpha: 1.0)
    }
    
}
