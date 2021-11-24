//
//  AllGroupViewController+TableViewDelegate.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

extension AllGroupViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightCustomTableViewCell
    }
    
    
}
