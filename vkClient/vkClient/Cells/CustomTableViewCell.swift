//
//  CustomTableViewCell.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarImageView.image = nil
        nameLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(image: UIImage?, text: String?) {
        avatarImageView.image = image
        nameLabel.text = text
        
        
    }
    
    func configure(frined: Friend) {
        if let imageName = frined.avatar {
        avatarImageView.image = UIImage(named: imageName)
        }
        nameLabel.text = frined.name
    }
    
    func configure(group: Group) {
        if let imageName = group.avatar {
        avatarImageView.image = UIImage(named: imageName)
        }
        nameLabel.text = group.name
    }

  
}
