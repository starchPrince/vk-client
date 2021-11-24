//
//  AllGroupViewController+FillData.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

extension AllGroupViewController {
    
    func groupFillData() {
        let group1 = Group(name: "GoldenState", avatar: "3")
        let group2 = Group(name: "MiamiHeat", avatar: "4")
        let group3 = Group(name: "ChicagoBULLS", avatar: "5")
        sourceArray.append(group1)
        sourceArray.append(group2)
        sourceArray.append(group3)
    
    }
    
    
}
