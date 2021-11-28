//
//  MyGroupViewController+TableViewDataSource.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

extension MyGroupViewController: UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: customCellREuseIdentifier, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        

        cell.configure(group: sourceArray[indexPath.row])
        return cell
    }
    
    
    
    
    
    
}
