//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 오킹 on 2021/02/09.
//
import UIKit
import Foundation

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        self.firstLabel.text = "Hong의 사진"
    }
}
