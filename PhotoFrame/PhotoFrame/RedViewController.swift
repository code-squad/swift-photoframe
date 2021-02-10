//
//  RedViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/09.
//

import UIKit

class RedViewController: UIViewController {
    
    let closeButton = UIButton(type: .system)
    let closeButtonWidth: CGFloat = 100.0
    let closeButtonHeight: CGFloat = 50.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemRed
        
        closeButton.frame = CGRect(x: self.view.frame.midX - closeButtonWidth / 2, y: self.view.frame.midY - closeButtonHeight / 2, width: closeButtonWidth, height: closeButtonHeight)
        closeButton.backgroundColor = UIColor.systemYellow
        closeButton.setTitle("닫기", for: .normal)
        closeButton.setTitleColor(UIColor.black, for: .normal)
        
        self.view.addSubview(closeButton)
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
