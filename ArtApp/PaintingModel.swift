//
//  PaintingModel.swift
//  ArtApp
//
//  Created by Victor  on 4/24/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    weak var tableView: UITableView?
    var paintings: [Painting] = []
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        print("hello")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
}
