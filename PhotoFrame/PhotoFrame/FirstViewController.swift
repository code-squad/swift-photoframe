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
        photoLabel.textColor = UIColor.blue
        photoLabel.backgroundColor = UIColor.yellow
        photoLabel.alpha = 0.5
        resultOfButtonAction.text = "TOUCH UP INSIDE"
    }

    @IBAction func nextButtonTouchedUpOutside(_ sender: Any) {
        photoLabel.setDefaultStyle()
        resultOfButtonAction.text = "TOUCH UP OUTSIDE"
    }

    @IBAction func nextButtonTouchedDown(_ sender: Any) {
        photoLabel.setDefaultStyle()
        resultOfButtonAction.text = "TOUCH DOWN"
    }

}
