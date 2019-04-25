//
//  PaintingViewController.swift
//  ArtApp
//
//  Created by Victor  on 4/24/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    //referencing the tableView
    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //able to pass data into the table view
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //method to use
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    
    //
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        //change text of button
    
        //it should just switchg button text
        guard let painting = cell.painting else {return}
        
        //checking if it's false
        if !painting.isLiked {
            cell.button.setTitle("Dislike", for: .normal)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //number of paintings
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //setting up the cells
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else {return cell}
        
        let painting = paintingController.paintings[indexPath.row]
        
        paintingCell.painting = painting
        paintingCell.delegate = self
        
        return cell
    }
    


}
