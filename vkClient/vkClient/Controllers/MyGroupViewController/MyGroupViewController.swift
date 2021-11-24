//
//  MyGroupViewController.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

class MyGroupViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    var sourceArray = ["TestGroup"]
    
    let customCellREuseIdentifier = "customCellREuseIdentifier"
    let heightCustomTableViewCell: CGFloat = 45
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: customCellREuseIdentifier)
    }
    
}


