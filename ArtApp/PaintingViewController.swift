//
//  PaintingViewController.swift
//  ArtApp
//
//  Created by Victor  on 4/24/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        //change text of button
    
        guard let painting = cell.painting else {return}
        
        if !painting.isLiked {
            cell.button.setTitle("Dislike", for: .normal)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else {return cell}
        
        let painting = paintingController.paintings[indexPath.row]
        
        paintingCell.painting = painting
        paintingCell.delegate = self
        
        return cell
    }
    


}
