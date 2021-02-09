//
//  StateController.swift
//  PhotoFrame
//
//  Created by zombietux on 2021/02/09.
//

import UIKit

class StateController {
    class func loadRandomPhoto() -> UIImage {
        let randomInt = Int.random(in: 1...22)
        var photoName = String()
        
        randomInt < 10 ? (photoName = "0" + String(randomInt)) : (photoName = String(randomInt))
        
        return UIImage(named: photoName) ?? UIImage()
    }
}
