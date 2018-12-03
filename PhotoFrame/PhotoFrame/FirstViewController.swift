//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 윤지영 on 28/11/2018.
//  Copyright © 2018 윤지영. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var photoLabel: TitleLabel!
    @IBOutlet weak var photoDescription: SubTitleLabel!
    @IBOutlet weak var resultOfButtonAction: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoLabel.setDefaultStyle()
        photoDescription.setDefaultStyle()
        resultOfButtonAction.textAlignment = .center
        resultOfButtonAction.text = "NO ACTION"
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        let buttonAction = "TOUCH UP INSIDE"
        showResult(of: buttonAction)
    }
    
    @IBAction func nextButtonTouchedUpOutside(_ sender: Any) {
        let buttonAction = "TOUCH UP OUTSIDE"
        showResult(of: buttonAction)
    }
    
    @IBAction func nextButtonTouchedDown(_ sender: Any) {
        let buttonAction = "TOUCH DOWN"
        showResult(of: buttonAction)
    }
    
    @IBAction func nextButtonTouchedDownRepeatedly(_ sender: Any) {
        let buttonAction = "TOUCH DOWN REPEAT"
        showResult(of: buttonAction)
    }
    
    @IBAction func nextButtonTouchedDragInside(_ sender: Any) {
        let buttonAction = "TOUCH DRAG INSIDE"
        showResult(of: buttonAction)
    }

    @IBAction func nextButtonTouchedDragOutside(_ sender: Any) {
        let buttonAction = "TOUCH DRAG OUTSIDE"
        showResult(of: buttonAction)
    }

    @IBAction func nextButtonTouchCanceled(_ sender: Any) {
        let buttonAction = "TOUCH CANCEL"
        showResult(of: buttonAction)
    }

    @IBAction func nextButtonTouchDragExited(_ sender: Any) {
        let buttonAction = "TOUCH DRAG EXIT"
        showResult(of: buttonAction)
    }

    @IBAction func nextButtonTouchDragEntered(_ sender: Any) {
        let buttonAction = "TOUCH DRAG ENTER"
        showResult(of: buttonAction)
    }

    private func showResult(of result: String) {
        resultOfButtonAction.text = result
        print(result)
    }

}
