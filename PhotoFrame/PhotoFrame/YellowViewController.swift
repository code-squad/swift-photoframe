//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/09.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var closeBtnBottom: NSLayoutConstraint!
    @IBOutlet weak var closeBtnCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var nextBtnCenterY: NSLayoutConstraint!
    @IBOutlet weak var nextBtnCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var closeBtn1: UIButton!
    @IBOutlet weak var closeBtn2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        closeBtnUpAnimation()
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        viewCloseAnimation()
    }
    
    @IBAction func printOneTouched(_ sender: Any) {
        print(1)
    }
    @IBAction func printTwoTouched(_ sender: Any) {
        print(2)
    }
}


extension YellowViewController {
    
    func closeBtnUpAnimation() {
        closeBtnBottom.constant = self.view.frame.height/2 - 100
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    func viewCloseAnimation() {
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: []) {
            self.leftAnimation(self.nextBtnCenterX)
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
            self.upAnimation(self.nextBtnCenterY)
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.zeroAlphaView(self.nextBtn)
                self.view.layoutIfNeeded()
            }
            self.leftAnimation(self.closeBtnCenterX)
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
            self.upAnimation(self.closeBtnBottom)
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.zeroAlphaView(self.closeBtn)
                self.view.layoutIfNeeded()
            }
        } completion: { (_) in
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func leftAnimation(_ constraint : NSLayoutConstraint) {
        constraint.constant = -(self.view.frame.width/3)
    }
    func upAnimation(_ constraint : NSLayoutConstraint) {
        constraint.constant = -150
    }
    func zeroAlphaView(_ ui : UIView) {
        ui.alpha = 0
    }
}
