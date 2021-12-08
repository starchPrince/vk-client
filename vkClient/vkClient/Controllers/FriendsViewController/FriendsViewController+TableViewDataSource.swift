//
//  FriendsViewController+TableViewDataSource.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

extension FriendsViewController: UITableViewDataSource {
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: customCellREuseIdentifier)    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: customCellREuseIdentifier, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        
        cell.configure(frined: friendsArray[indexPath.row], closure: {[weak self] in
           if let self = self,
              let friendsPhotoArray = self.friendsArray[indexPath.row].photoArray {
               self.performSegue(withIdentifier: self.toGalerySegue, sender: friendsPhotoArray) }
        })
        return cell
    }
    
    
    
    
    
    
}
