//
//  FriendsViewController+TableViewDeligate.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

extension FriendsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightCustomTableViewCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toGalerySegue,
        let friendsPhotoArray = sender as? [String],
           let destination = segue.destination as? GalleryViewController
        {
            destination.sourceArray = friendsPhotoArray
        }
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let friendsPhotoArray = friendsArray[indexPath.item].photoArray {
//        performSegue(withIdentifier: toGalerySegue, sender: friendsPhotoArray)
//        }
//    }
    
    
}
