//
//  PhotoAlbumViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 29/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class PhotoAlbumViewController: UIViewController {
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var playSpeedLabel: UILabel!
    
    var images = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = randomImage()
        photoImageView.contentMode = .scaleToFill
        setupImages()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        photoImageView.image = randomImage()
    }
    
    @IBAction func playButtonTouched(_ sender: Any) {
        let play = { self.photoImageView.startAnimating() }
        let pause = { self.photoImageView.stopAnimating() }
        playButton.isSelected.toggle()
        playButton.isSelected ? play() : pause()
    }
    
    private func setupImages() {
        let list = (1...22)
            .map { $0 >= 10 ? "\($0)).jpg" : "0\($0).jpg" }
            .compactMap { UIImage(named: $0) }
        images.append(contentsOf: list)
        photoImageView.animationImages = list.compactMap{ $0 }
    }
    
    @IBAction func speedStepperValueChange(_ sender: UIStepper) {
        let speed = 1 / sender.value
    photoImageView.animationDuration = speed
        playSpeedLabel.text = "\(sender.value)단계"
        if playButton.isSelected { photoImageView.startAnimating() }
    }
    
    
    private func randomImage() -> UIImage? {
        return images.randomElement()
    }
    
}
