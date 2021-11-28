//
//  MyGroupViewController+TableViewDelegate.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

extension MyGroupViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightCustomTableViewCell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let aletController = UIAlertController(title: "Delete cell", message: "Точно удаляем?", preferredStyle: .actionSheet)
            let actionYes = UIAlertAction(title: "Yes", style: .default) {[weak self] _ in
                guard let self = self else {return}
                self.sourceArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            aletController.addAction(actionYes)
            let actiontNo = UIAlertAction(title: "No", style: .cancel, handler: nil)
            aletController.addAction(actiontNo)
            self.present(aletController, animated: true, completion: nil)
        }
        
        
    }
    
    
        
    
    
    
}
