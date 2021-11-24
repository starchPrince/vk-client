//
//  FriendsViewController+FillData.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

extension FriendsViewController {
    func fillFriendsArray() {
        let friend1 = Friend(name: "Bb", avatar: "1-1", photoArray: ["1-1", "1-2", "1-3", "1-4", "1-5"])
        let friend2 = Friend(name: "Julia", avatar: "2-1", photoArray: ["2-1", "2-2", "2-3"])
        
        friendsArray.append(friend1)
        friendsArray.append(friend2)
    }
    
}
