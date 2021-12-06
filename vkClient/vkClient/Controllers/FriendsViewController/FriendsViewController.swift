//
//  FriendsViewController.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchFriendsView: UISearchBar!
    
    var friendsArray = [Friend]()
    
    let customCellREuseIdentifier = "customCellREuseIdentifier"
    let heightCustomTableViewCell: CGFloat = 45
    let toGalerySegue = "toGalerySegue"

    override func viewDidLoad() {
        super.viewDidLoad()

       configureTableView()
        fillFriendsArray()
    }
    
}



