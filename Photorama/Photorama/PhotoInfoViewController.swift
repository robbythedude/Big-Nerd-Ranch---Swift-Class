//
//  PhotoInfoViewController.swift
//  Photorama
//
//  Created by Robert Steiner on 9/15/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import UIKit

class PhotoInfoViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var photo: Photo! {
        didSet {
            navigationItem.title = photo.title
        }
    }
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchImage(for: photo) { (result) -> Void in
            switch result{
            case let .success(image):
                self.imageView.image = image
            case let .failure(error):
                print("Error fetching image for photo: \(error)")
            }
        }
    }
    
}
