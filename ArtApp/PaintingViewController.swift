//
//  PaintingViewController.swift
//  ArtApp
//
//  Created by Victor  on 4/24/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }


}
