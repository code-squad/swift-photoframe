//
//  UIImageView-Animte.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/09.
//

import UIKit

struct Animation {
    static func labelAlphaIncrease(target : UIView, withDuration : TimeInterval) {
        UIView.animate(withDuration: withDuration) {
            target.alpha = 1
        }
    }
    
    static func imageCrossDissolveAnimate(imageView : UIImageView, selectImage : String) {
        UIView.transition(with: imageView,
                          duration: 1.0,
                          options: .transitionCrossDissolve,
                          animations: {
                            imageView.image = UIImage(named: selectImage)
                          })
    }
}
