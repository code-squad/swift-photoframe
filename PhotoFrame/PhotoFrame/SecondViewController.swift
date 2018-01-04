//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 심 승민 on 2017. 12. 27..
//  Copyright © 2017년 심 승민. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    private var images: [UIImage]

    required init?(coder aDecoder: NSCoder) {
        self.images = []
        super.init(coder: aDecoder)
        guard let images = generateUIImages(getJPGImageFileNames()) else { return nil }
        self.images = images
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog(#file, #line, #function, #column)
        self.photoImageView.image = getRandomImage()
        self.photoImageView.contentMode = .scaleAspectFill
    }

    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        if let randomImage = getRandomImage() {
            self.photoImageView.image = randomImage
        }
    }

    private func generateUIImages(_ directoryAndFileNames: [String]?) -> [UIImage]? {
        guard let fileNames = directoryAndFileNames else { return nil }
        let uiImages = fileNames.flatMap { UIImage(named: $0) }
        return uiImages
    }

    private func getJPGImageFileNames() -> [String]? {
        guard let path = Bundle.main.resourcePath else { return nil }
        let fileManager = FileManager.default
        var jpgFileNames: [String]?
        if let fileNames = try? fileManager.contentsOfDirectory(atPath: path) {
            // 폴더명은 따로 붙여줄 필요 없음.
            jpgFileNames = fileNames.filter({ $0.hasSuffix(".jpg") })
        }
        return jpgFileNames
    }

    private func getRandomImage() -> UIImage? {
        let randomIndex = Int(arc4random_uniform(UInt32(self.images.count)))
        return self.images[randomIndex]
    }
}
