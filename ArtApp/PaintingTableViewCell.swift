//
//  PaintingTableViewCell.swift
//  ArtApp
//
//  Created by Victor  on 4/24/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    @IBOutlet weak var portraitImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    weak var delegate: PaintingTableViewCellDelegate?
    
    
    @IBAction func likeButtonPressed(_ sender: Any) {
        //toggleAppreciation
    }

}
