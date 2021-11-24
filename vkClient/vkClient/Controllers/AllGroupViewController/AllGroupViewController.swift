//
//  AllGroupViewController.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

class AllGroupViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var sourceArray = [Group]()
    
    let customCellREuseIdentifier = "customCellREuseIdentifier"
    let heightCustomTableViewCell: CGFloat = 45
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        groupFillData()
    }

}
