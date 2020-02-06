//
//  BrownViewController.swift
//  PhotoFrame
//
//  Created by Cloud on 2020/02/03.
//  Copyright © 2020 Cloud. All rights reserved.
//

import UIKit

class BrownViewController: UIViewController {
    
    // MARK: - Actions
    @IBAction func ClosedButtonTouched(_ sender: UIButton) {
        let grayViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "GrayViewController")
        show(grayViewController, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GrayView" {
            let popoverViewController = segue.destination
            popoverViewController.modalPresentationStyle = .popover
            popoverViewController.presentationController?.delegate = self
        }
    }
}

extension BrownViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
}
