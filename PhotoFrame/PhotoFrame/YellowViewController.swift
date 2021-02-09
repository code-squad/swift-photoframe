//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/09.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var closeButtonConstraintBottom: NSLayoutConstraint!
    @IBOutlet weak var closeButtonConstraintCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var nextButtonConstraintCenterY: NSLayoutConstraint!
    @IBOutlet weak var nextButtonConstraintCenterX: NSLayoutConstraint!
     
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        closeButtonMoveAnimation()
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
}


extension YellowViewController {
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        viewCloseAnimation()
    }
    
    func closeButtonMoveAnimation() {
        closeButtonConstraintBottom.constant = self.view.frame.height/2 - self.view.frame.width/2
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    func viewCloseAnimation() {
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: []) {
            self.leftMoveAnimation(constraint : self.nextButtonConstraintCenterX)
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
            self.upMoveAnimation(constraint : self.nextButtonConstraintCenterY)
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.zeroAlphaView(target : self.nextButton)
                self.view.layoutIfNeeded()
            }
            self.leftMoveAnimation(constraint : self.closeButtonConstraintCenterX)
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
            self.upMoveAnimation(constraint : self.closeButtonConstraintBottom)
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.zeroAlphaView(target : self.closeButton)
                self.view.layoutIfNeeded()
            }
        } completion: { (Finished) in
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func leftMoveAnimation(constraint : NSLayoutConstraint) {
        constraint.constant = -(self.view.frame.width/3)
    }
    func upMoveAnimation(constraint : NSLayoutConstraint) {
        constraint.constant = -150
    }
    func zeroAlphaView(target : UIView) {
        target.alpha = 0 
    }
}
