//
//  PaintingTableViewCell.swift
//  ArtApp
//
//  Created by Victor  on 4/24/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import UIKit
import Foundation

class PaintingTableViewCell: UITableViewCell {
    
    //creating the variables and outlets
    @IBOutlet var portraitImage: UIImageView!
    @IBOutlet var button: UIButton!
    
    //need delegate for button
    weak var delegate: PaintingTableViewCellDelegate?
    
    //setting view
    var painting: Painting? {
        didSet {
            updateView()
        }
    }
    
    //updating view for images
    func updateView() {
        guard let painting = painting else {return}
        portraitImage.image = painting.image
    }
    
    @IBAction func likeButtonPressed(_ sender: Any) {
//        guard let painting = painting else {return}
//        if !painting.isLiked {
//            button.setTitle("Dislike", for: .normal)
//        }
        delegate?.tappedLikeButton(on: self)
    }

}
