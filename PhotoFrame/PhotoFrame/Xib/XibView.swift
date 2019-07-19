//
//  XibViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 19/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation
import UIKit

class XibView: UIView {
    private let xibName = "XibView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        let view = Bundle.main.loadNibNamed(xibName, owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
}
