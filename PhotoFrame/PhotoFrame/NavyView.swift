//
//  NavyView.swift
//  PhotoFrame
//
//  Created by CHOMINJI on 19/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class NavyView: UIView {
    private let xibName = "NavyView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        let view = Bundle.main.loadNibNamed(xibName, owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
}
