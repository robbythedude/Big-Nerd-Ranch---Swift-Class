//
//  UIImage+Extension.swift
//  Mandala
//
//  Created by Robert Steiner on 9/14/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import UIKit

enum ImageResource: String {
    case angry
    case confused
    case crying
    case goofy
    case happy
    case meh
    case sad
    case sleepy
}

extension UIImage {
    convenience init(resource: ImageResource){
        self.init(named: resource.rawValue)!
    }
}
