//
//  Painting.swift
//  ArtApp
//
//  Created by Victor  on 4/24/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

//object
struct Painting {
    let image: UIImage?
    var isLiked: Bool
    
    init(image: UIImage) {
        self.image = image
        self.isLiked = false
    }
    
    
}
