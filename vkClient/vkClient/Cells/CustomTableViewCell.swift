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
    @IBOutlet weak var backView: UIView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarImageView.image = nil
        nameLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.layer.cornerRadius = 20
        avatarImageView.layer.cornerRadius = 20
        backView.layer.borderColor = UIColor.systemPink.cgColor
        backView.layer.borderWidth = 1
        backView.layer.shadowColor = UIColor.black.cgColor
        backView.layer.shadowRadius = 3
        backView.layer.shadowOffset = CGSize(width: 3, height: 3)
        backView.layer.shadowOpacity = 0.6
        
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
