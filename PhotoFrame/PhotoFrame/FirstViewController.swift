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

    override func viewDidLoad() {
        super.viewDidLoad()
        photoLabel.setDefaultStyle()
        photoDescription.setDefaultStyle()
    }

}
