//
//  CustomSegue.swift
//  PhotoFrame
//
//  Created by 이동영 on 18/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {

    override func perform() {
        UIView.animate(withDuration: 1.5, delay: 0, options: [.curveEaseInOut], animations: {
            self.source.view.frame.size = .zero
            self.source.view.transform = CGAffineTransform.init(rotationAngle: .pi)
            self.source.view.subviews.forEach{ $0.removeFromSuperview() }
        }) { _ in
            self.source.present(self.destination, animated: true)
        }
    
        
    }
    
}
