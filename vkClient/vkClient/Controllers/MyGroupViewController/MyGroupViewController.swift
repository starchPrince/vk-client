//
//  MyGroupViewController.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

class MyGroupViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var sourceArray = [Group]()
    
    let customCellREuseIdentifier = "customCellREuseIdentifier"
    let heightCustomTableViewCell: CGFloat = 45
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: customCellREuseIdentifier)
        NotificationCenter.default.addObserver(self, selector: #selector(addGroup(_:)), name: NSNotification.Name("groupSelectedNotification"), object: nil)
    }
    
    @objc func addGroup(_ notification: Notification) {
        
        guard let groupObject = notification.object as? Group else {return}
        print(groupObject.name)
        
        if sourceArray.contains(where: { sourceGroup in
            sourceGroup.name == groupObject.name
        }) {
           print("Такая группа уже есть")
        } else {
            sourceArray.append(groupObject)
            tableView.reloadData()
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}


